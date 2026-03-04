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

import 'package:web/web.dart' as html;

Future setInitialParamAction() async {
  // Add your function code here!

  String currentUrl = html.window.location.href;
  final uri = Uri.parse(currentUrl);

  if ('${uri.queryParameters['userDocRef']}' != '' &&
      '${uri.queryParameters['userDocRef']}' != 'null') {
    FFAppState().userDocRef =
        FirebaseFirestore.instance.doc('${uri.queryParameters['userDocRef']}');
    FFAppState().profileFullName = '${uri.queryParameters['profileFullName']}';
    print('${FFAppState().userDocRef}');
    return;
  }

  print('user doc ref is not set');
}

// String? utmSource;
//   String? utmMedium;
//   String? utmCampaign;
//   Uri uri = Uri.base;
//   print(uri);

//   // Extract query parameters
//   utmSource = '${uri.queryParameters['utm_source']}';
//   utmMedium = '${uri.queryParameters['utm_medium']}';
//   utmCampaign = '${uri.queryParameters['utm_campaign']}';
//   if ('${inputParam!}' == 'utm_source') {
//     return '${utmSource!}';
//   } else if ('${inputParam!}' == 'utm_medium') {
//     return '${utmMedium!}';
//   } else if ('${inputParam!}' == 'utm_campaign') {
//     return '${utmCampaign!}';
//   }

//   print("utm_source: $utmSource");
//   print("utm_medium: $utmMedium");
//   print("utm_campaign: $utmCampaign");
//   return '';
