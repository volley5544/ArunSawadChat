import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DocumentReference? _userDocRef =
      FirebaseFirestore.instance.doc('/user_custom/oifjewofjewoif');
  DocumentReference? get userDocRef => _userDocRef;
  set userDocRef(DocumentReference? value) {
    _userDocRef = value;
  }
}
