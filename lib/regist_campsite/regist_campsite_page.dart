import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'regist_campsite_model.dart';

class RegistCampSitePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<RegistCampSiteModel>(
      create: (_) => RegistCampSiteModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Regist Campsite'),
          actions: [
            PopupMenuButton(itemBuilder: (context)=> [
              PopupMenuItem(child:
              Text('Logout'),
                value: 1,
              ),
            ]),
          ],
        ),
        body: Consumer<RegistCampSiteModel>(
            builder: (context, model, child) {
              return Column(children: <Widget>[
                Center(
                  child: Text('regist camp site'),
                ),
                // 登録ボタン
                SizedBox(
                  width: 90,
                  child: ElevatedButton(
                    child: Text('regist'),
                    onPressed: () async {
                      try {
                        //await model.signup();
                        //_showDialog(context, '登録完了');
                        Navigator.of(context).pop();
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
