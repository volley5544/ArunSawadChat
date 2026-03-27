// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> appMyListViewControllerSet(BuildContext context) async {
  // Add your function code here!
  if (!context.mounted) {
    print('context not mounted');
    return false;
  }

  /* get ancestor listView controller */
  // using JSON appSate tips found in see https://community.flutterflow.io/ask-the-community/post/global-variable-which-stores-an-object-Bpf2S6lNLKlFzyA
  // in fact JSON is dynamic = any type...
  if (FFAppState().myListViewController == null ||
      FFAppState().myListViewControllerReset) {
    ListView? listView = context.findAncestorWidgetOfExactType<ListView>();
    FFAppState().myListViewController = listView?.controller;
    FFAppState().myListViewControllerReset = false;

    FFAppState().listViewItemHeight = context.size!.height;
  }
  return true;
}
