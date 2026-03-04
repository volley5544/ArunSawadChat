import 'package:flutter/material.dart';
import '/backend/backend.dart';

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

  DocumentReference? _userDocRef;
  DocumentReference? get userDocRef => _userDocRef;
  set userDocRef(DocumentReference? value) {
    _userDocRef = value;
  }

  UserProfileDataModelStruct _userProfileData = UserProfileDataModelStruct();
  UserProfileDataModelStruct get userProfileData => _userProfileData;
  set userProfileData(UserProfileDataModelStruct value) {
    _userProfileData = value;
  }

  void updateUserProfileDataStruct(
      Function(UserProfileDataModelStruct) updateFn) {
    updateFn(_userProfileData);
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String value) {
    _accessToken = value;
  }

  String _profileFullName = '';
  String get profileFullName => _profileFullName;
  set profileFullName(String value) {
    _profileFullName = value;
  }
}
