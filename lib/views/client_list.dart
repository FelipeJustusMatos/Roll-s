import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rolls/first_files/app_widget.dart';
import 'package:rolls/provider/Client.dart';


class ClientList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ClienteProvider cliente = Provider.of(context);

    return Scaffold(
    drawer: MyHamburguer(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_rolls5.png',
              fit: BoxFit.contain,
              height: 45,
            ),
            Container(
                padding: const EdgeInsets.only(top: 3, bottom: 3, left: 55, right: 65),
                child: Text("Roll's"))
          ],
        ),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () { 
              Navigator.of(context).pushNamed('/cliente_form');
             }
             ),
        ]
      ),
      body: ListView.builder(
        itemCount: cliente.count,
        itemBuilder: (ctx, i) => ClienteTile(cliente.byIndex(i)),
      ),
              
      );
  }
}
