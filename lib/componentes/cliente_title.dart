import 'package:flutter/material.dart';
import 'package:rolls/modelo/client.dart';

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
