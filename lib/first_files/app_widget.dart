import 'package:flutter/material.dart';
import 'package:rolls/modelo/client.dart';
import 'package:rolls/views/client_list.dart';

import 'home_page.dart';
import 'loguin_page.dart';

class MyAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
        return MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => LoguinPage(),
            '/views': (context) => ClientList(),
            '/home': (context) => HomePage(),
          },
        ); 
  }

}

class ClienteTile extends StatelessWidget {
  final Cliente cliente;

  const ClienteTile(this.cliente);

  @override
  Widget build(BuildContext context) {
    final avatar = cliente.avatarUrl == null || cliente.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(cliente.avatarUrl));
    return ListTile(
        leading: avatar,
        title: Text(cliente.name),
        subtitle: Text(cliente.email),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.orange, 
                onPressed: () {},
                ),
                IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {},
                )
                
                ],
          ),
        ));
  }
}

class MyHamburguer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            
            UserAccountsDrawerHeader(             
              currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset('assets/images/euft.jpeg')),
              accountName: Text('Felipe Justus'),
              accountEmail: Text('felip@gmail.com'),
              ),
              
            ListTile( 
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Tela de inicio'),
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('/views');
                },
            ), //navegation home
  
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Historico'),
              subtitle: Text('Tela de historico'),
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('/home');
                },
            ),   //navegation history          

            ListTile(
              leading: Icon(Icons.article_outlined),
              title: Text('Relatório'),
              subtitle: Text('tela do relatório'),
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('/relatorioPage');
                },
            ), //navegation relarory

            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('/');
                },
            ),//navegation out
          ]
        ),
      ),
   );
}
}

class AppBarNavegation extends StatelessWidget {
  const AppBarNavegation({ Key? key })// : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}