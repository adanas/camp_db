import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpModel extends ChangeNotifier {
  String mail = '';
  String password = '';

  final FirebaseAuth fbAuth = FirebaseAuth.instance;

  // 新規登録
  Future signup() async {
    if(mail.isEmpty) {
      throw('please input email');
    }
    if(password.isEmpty) {
      throw('please input password');
    }

    try {
      final User user = (await fbAuth.createUserWithEmailAndPassword(
          email: mail,
          password: password,
      )).user;
      final uid = user.uid;

    } catch(e) {
      //throw('signup failed');
      throw(e.toString());
    }

  }
}