import 'package:flutter/material.dart';

import 'app_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState(); 
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.only(top: 3,bottom: 3, right: 70),
                    child: Text("Roll's"))                 
            ],

          ),
  ),
      
      body: Column(
  children: [
    Expanded(
      child: ListView(
        children: [
          SizedBox(
                        height: 5,
                    ),
          Container(
            height: 50,
            color: Colors.lightBlue[200],
            child: const Center(child: Text('Hospital Primavera')
            
            ),
          ),
          SizedBox(
                        height: 1,
                    ),
          Container(
            height: 50,
            color: Colors.lightBlue[100],
            child: const Center(child: Text('Hospital São Lucas')),
          ),
          SizedBox(
                        height: 1,
                    ),
          Container(
            height: 50,
            color: Colors.lightBlue[50],
            child: const Center(child: Text('Hospital Pompéia')),
          ),
          Container(
            height: 50,
            color: Colors.lightBlue[200],
            child: const Center(child: Text('Unimed')),
          ),
          SizedBox(
                        height: 1,
                    ),
          Container(
            height: 50,
            color: Colors.lightBlue[100],
            child: const Center(child: Text('Motel Zoom')),
          ),
          SizedBox(
                        height: 1,
                    ),
          Container(
            height: 50,
            color: Colors.lightBlue[50],
            child: const Center(child: Text('Pousada Lamour')),
          ),Container(
            height: 50,
            color: Colors.lightBlue[200],
            child: const Center(child: Text('So Love')),
          ),
          SizedBox(
                        height: 1,
                    ),
          Container(
            height: 50,
            color: Colors.lightBlue[100],
            child: const Center(child: Text('Entry B')),
          ),
          SizedBox(
                        height: 1,
                    ),
          Container(
            height: 50,
            color: Colors.lightBlue[50],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),
    ),
  ],
),


      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
          },
      ),
    );
  }
  
}
