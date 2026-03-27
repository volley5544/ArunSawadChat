// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/widgets/index.dart';
import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:socket_io_client/socket_io_client.dart' as IO;

class RestRealtimeChatWidget extends StatefulWidget {
  const RestRealtimeChatWidget({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<RestRealtimeChatWidget> createState() => _RestRealtimeChatWidgetState();
}

class _RestRealtimeChatWidgetState extends State<RestRealtimeChatWidget> {
  final TextEditingController chatIdController = TextEditingController();
  final TextEditingController senderIdController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  final ScrollController scrollController = ScrollController();

  List messages = [];

  IO.Socket? socket;

  int? currentChatId;

  @override
  void initState() {
    super.initState();
    connectSocket();
  }

  void scrollToBottom() {
    if (!scrollController.hasClients) return;

    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void connectSocket() {
    socket = IO.io(
      "https://bbca-49-231-1-82.ngrok-free.app",
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .build(),
    );

    socket!.connect();

    socket!.onConnect((_) {
      debugPrint("socket connected");
    });

    socket!.on("receive_message", (msg) {
      int myId = int.tryParse(senderIdController.text) ?? 0;

      setState(() {
        messages.add({
          "sender_name": msg["username"] ?? "User ${msg["sender_id"]}",
          "content": msg["content"],
          "is_me": msg["sender_id"] == myId
        });
      });

      WidgetsBinding.instance.addPostFrameCallback((_) {
        scrollToBottom();
      });
    });
  }

  Future joinChat() async {
    int? chatId = int.tryParse(chatIdController.text);

    if (chatId == null) {
      return;
    }

    currentChatId = chatId;

    socket?.emit("join_chat", chatId);

    await loadMessages(chatId);
  }

  Future loadMessages(int chatId) async {
    messages.clear();

    final res = await http.get(
      Uri.parse(
          "https://bbca-49-231-1-82.ngrok-free.app/v1/api/messages-get/$chatId"),
      headers: {
        "ngrok-skip-browser-warning": "true",
      },
    );

    final data = jsonDecode(res.body);

    int myId = int.tryParse(senderIdController.text) ?? 0;

    setState(() {
      messages = data.map((msg) {
        return {
          "sender_name": msg["username"] ?? "User ${msg["sender_id"]}",
          "content": msg["content"],
          "is_me": msg["sender_id"] == myId
        };
      }).toList();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollToBottom();
    });
  }

  Future sendMessage() async {
    int? senderId = int.tryParse(senderIdController.text);
    String content = messageController.text.trim();

    if (currentChatId == null || senderId == null || content.isEmpty) {
      return;
    }

    await http.post(
      Uri.parse("https://bbca-49-231-1-82.ngrok-free.app/v1/api/messages-send"),
      headers: {
        "Content-Type": "application/json",
        "ngrok-skip-browser-warning": "true",
      },
      body: jsonEncode({
        "chat_id": currentChatId,
        "sender_id": senderId,
        "content": content
      }),
    );

    messageController.clear();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollToBottom();
    });
  }

  Widget messageBubble(msg) {
    return Align(
      alignment: msg["is_me"] ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: msg["is_me"] ? Colors.green[200] : Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              msg["sender_name"],
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 2),
            Text(msg["content"]),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    socket?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: SafeArea(
        child: Column(
          children: [
            /// login box
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: chatIdController,
                      decoration: const InputDecoration(labelText: "Chat ID"),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: senderIdController,
                      decoration: const InputDecoration(labelText: "User ID"),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: usernameController,
                      decoration: const InputDecoration(labelText: "Name"),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: joinChat,
                    child: const Text("Join"),
                  )
                ],
              ),
            ),

            /// messages
            Expanded(
              child: Container(
                color: Colors.grey[100],
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return messageBubble(messages[index]);
                  },
                ),
              ),
            ),

            /// input
            Container(
              padding: EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        hintText: "Type message...",
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: sendMessage,
                    child: const Text("Send"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
