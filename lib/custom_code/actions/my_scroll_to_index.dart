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

Future myScrollToIndex(int? index) async {
  // Add your function code here!
  if (FFAppState().myListViewController == null) return false;

  double offset = 0;
  if (index! > 1) {
    offset = index! * FFAppState().listViewItemHeight;
  }

  FFAppState().myListViewControllerReset = true;
  await FFAppState().myListViewController.animateTo(
        offset,
        duration: Duration(milliseconds: 100),
        curve: Curves.ease,
      );

  return;
}
