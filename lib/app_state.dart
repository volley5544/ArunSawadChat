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

  dynamic _myListViewController;
  dynamic get myListViewController => _myListViewController;
  set myListViewController(dynamic value) {
    _myListViewController = value;
  }

  bool _myListViewControllerReset = false;
  bool get myListViewControllerReset => _myListViewControllerReset;
  set myListViewControllerReset(bool value) {
    _myListViewControllerReset = value;
  }

  double _listViewItemHeight = 0.0;
  double get listViewItemHeight => _listViewItemHeight;
  set listViewItemHeight(double value) {
    _listViewItemHeight = value;
  }

  DocumentReference? _workFollowUpGroupRef;
  DocumentReference? get workFollowUpGroupRef => _workFollowUpGroupRef;
  set workFollowUpGroupRef(DocumentReference? value) {
    _workFollowUpGroupRef = value;
  }

  UserProfileApiDataModelStruct _profileApiData =
      UserProfileApiDataModelStruct();
  UserProfileApiDataModelStruct get profileApiData => _profileApiData;
  set profileApiData(UserProfileApiDataModelStruct value) {
    _profileApiData = value;
  }

  void updateProfileApiDataStruct(
      Function(UserProfileApiDataModelStruct) updateFn) {
    updateFn(_profileApiData);
  }
}
