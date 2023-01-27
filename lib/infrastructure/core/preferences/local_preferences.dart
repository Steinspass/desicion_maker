import 'package:shared_preferences/shared_preferences.dart';

class Preferences{


  static final Preferences _instance = new Preferences._internal();

  factory Preferences(){
    return _instance;
  }

  Preferences._internal();

  late SharedPreferences _prefs;

  initPrefs() async{
    this._prefs = await SharedPreferences.getInstance();
  }


  //? Save if the user is open the app for first time

  bool get isFirstTimeOpen {
    return _prefs.getBool('isFirstTimeOpen') ?? false;
  }

  set isFirstTimeOpen (bool value) {
    _prefs.setBool('isFirstTimeOpen', value);
  }



  //? Save if the user is premium

  bool get isUserPremium {
    return _prefs.getBool('isUserPremium') ?? false;
  }

  set isUserPremium (bool value) {
    _prefs.setBool('isUserPremium', value);
  }



  //? Save current username

  String get getCurrentUsername {
    return _prefs.getString('currentUsername') ?? '';
  }

  set getCurrentUsername  (String value) {
    _prefs.setString('currentUsername', value);
  }

  //? Save current username

  String get getCurrentUserID {
    return _prefs.getString('getCurrentUserID') ?? '';
  }

  set getCurrentUserID  (String value) {
    _prefs.setString('getCurrentUserID', value);
  }

  
  
  //? Save the theme app

  bool get whatTheme {
    return _prefs.getBool('whatTheme') ?? true;
  }

  set whatTheme (bool value) {
    _prefs.setBool('whatTheme', value);
  }


  //? Save what type user is

  bool get isAnon {
    return _prefs.getBool('isAnon') ?? false;
  }

  set isAnon (bool value) {
    _prefs.setBool('isAnon', value);
  }


  //? Save if the user has vote in Play Store

  bool get voteInPlayStore {
    return _prefs.getBool('voteInPlayStore') ?? false;
  }

  set voteInPlayStore (bool value) {
    _prefs.setBool('voteInPlayStore', value);
  }



  

}