import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rolls/data/dummy_cliente.dart';
import 'package:rolls/first_files/app_widget.dart';


class ClientList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cliente = {...DUMMY_CLIENTE};

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
                padding: const EdgeInsets.only(top: 3, bottom: 3, right: 70),
                child: Text("Roll's"))
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: cliente.length,
        itemBuilder: (ctx, i) => ClienteTile(cliente['1']),
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
