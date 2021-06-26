import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final mailController = TextEditingController();
    final passwordController = TextEditingController();

    return ChangeNotifierProvider<LoginModel>(
      create: (_) => LoginModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('login'),
        ),
        body: Consumer<LoginModel>(
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
                // ログインボタン
                ElevatedButton(
                  child: Text('login'),
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
                )
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
