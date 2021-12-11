import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoguinPage extends StatefulWidget {
  @override
  _LoguinPageState createState() => _LoguinPageState();
}

class _LoguinPageState extends State<LoguinPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/logo_rolls5.png'),
                  ),
                  Container(height: 30),
                  Card(
                    color: Colors.transparent,
                    shadowColor: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (text) {
                              email = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            onChanged: (text) {
                              password = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RaisedButton(
                            color: Colors.lightBlue,
                            onPressed: () {
                              if (email == 'felip@gmail.com' &&
                                  password == '123') {
                                Navigator.of(context)
                                    .pushReplacementNamed('/views');
                              } else {
                                print('loguin invalido');
                              }
                            },
                            child: Text('Entrar'),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/background3.jpg',
              fit: BoxFit.cover,
            )),
        _body(),
      ],
    ));
  }
}
