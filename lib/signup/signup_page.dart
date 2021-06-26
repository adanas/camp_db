import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'signup_model.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final mailController = TextEditingController();
    final passwordController = TextEditingController();

    return ChangeNotifierProvider<SignUpModel>(
      create: (_) => SignUpModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('sign up'),
        ),
        body: Consumer<SignUpModel>(
            builder: (context, model, child) {
              return Column(children: <Widget>[
                // メールアドレス
                TextField(
                  controller: mailController,
                  decoration: InputDecoration(hintText: 'example@hogehoge.com'),
                  onChanged: (text){
                    model.mail = text;
                    TextField(

                    );
                  },
                ),
                // パスワード
                TextField(
                  decoration: InputDecoration(hintText: 'password'),
                  obscureText: true,
                  controller: passwordController,
                  onChanged: (text){
                    model.password = text;
                    TextField(

                    );
                  },
                ),
                // 登録ボタン
                SizedBox(
                  width: 90,
                  child: ElevatedButton(
                    child: Text('sign up'),
                    onPressed: () async {
                      try {
                        // await model.login();
                        // //_showDialog(context, 'ログイン完了');
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => BookListPage()),
                        // );
                      }
                      catch(e) {
                        _showDialog(context, e.toString());
                      }
                    },
                  ),
                ),
              ],
              );
            }
        ),
      ),
    );
  }
}

Future<void> _showDialog(BuildContext context, String title) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title:Text(title),
        actions: <Widget>[
          ElevatedButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );

  return null;
}
