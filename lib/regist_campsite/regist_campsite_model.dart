import 'package:flutter/material.dart';

class RegistCampSiteModel extends ChangeNotifier {
  String mail = '';
  String password = '';

  // final FirebaseAuth _auth = FirebaseAuth.instance;

  // ログイン
  Future login() async {
    if(mail.isEmpty) {
      throw('please input email');
    }
    if(password.isEmpty) {
      throw('please input password');
    }

    // try {
    //   final result = await _auth.signInWithEmailAndPassword(email: mail, password: password);
    //   final uid = result.user.uid;
    //
    //   // todo 端末に保存
    //
    // } catch(e) {
    //   throw('login failed');
    // }

  }
}