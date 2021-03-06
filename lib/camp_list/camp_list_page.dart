import 'package:camp_database/regist_campsite/regist_campsite_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'camp_list_model.dart';

class CampListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CampListModel>(
      create: (_) => CampListModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('camp list'),
          actions: [
            PopupMenuButton(itemBuilder: (context)=> [
              PopupMenuItem(child:
              Text('Logout'),
                value: 1,
              ),
            ]),
          ],
        ),
        body: Consumer<CampListModel>(
            builder: (context, model, child) {
              return Column(children: <Widget>[
                Center(
                  child: Text('camp list'),
                ),

              ],
              );
            }
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegistCampSitePage()),
            );
          },
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
