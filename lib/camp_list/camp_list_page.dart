import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'camp_list_model.dart';

class CampListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final mailController = TextEditingController();
    final passwordController = TextEditingController();

    return ChangeNotifierProvider<CampListModel>(
      create: (_) => CampListModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('camp list'),
        ),
        body: Consumer<CampListModel>(
            builder: (context, model, child) {
              return Column(children: <Widget>[
                // ログインボタン
                SizedBox(
                  width: 90,
                  child: ElevatedButton(
                    child: Text('login'),
                    onPressed: () async {
                      // try {
                      //   await model.login();
                      //   //_showDialog(context, 'ログイン完了');
                      //   Navigator.push(
                      //      context,
                      //      MaterialPageRoute(builder: (context) => BookListPage()),
                      //   );
                      // }
                      // catch(e) {
                      //   _showDialog(context, e.toString());
                      // }
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
