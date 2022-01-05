import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rolls/modelo/client.dart';
import 'package:rolls/provider/Client.dart';

class ClienteForm extends StatefulWidget {
  
  @override
  _ClienteFormState createState() => _ClienteFormState();
}

class _ClienteFormState extends State<ClienteForm> {
  final _form = GlobalKey<FormState>();

  final Map<String, String> _formData = {};

  void _loadFormData(Cliente cliente){
    if(cliente != null){
    _formData['id'] = cliente.id;
    _formData['name'] = cliente.name;
    _formData['email'] = cliente.email;
    _formData['avatarUrl'] = cliente.avatarUrl;
  }
}

@override
  void didChangeDependencies() {
    super.didChangeDependencies();
    
    final Cliente cliente = ModalRoute.of(context).settings.arguments;
   _loadFormData(cliente);

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(     
      //drawer: MyHamburguer(),
      appBar: AppBar(
        title: Text('Formulário de Clientes'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: (){
              final isValid = _form.currentState.validate();
              if(isValid) {
               _form.currentState.save();

               Provider.of<ClienteProvider>(context, listen: false).put(
                Cliente(
                 id: _formData['id'],
                 name: _formData['name'],
                 email: _formData['email'],
                 avatarUrl: _formData['avatarUrl'],
                ),
               );
               Navigator.of(context).pop();
              }
              
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue: _formData['name'],
                decoration: InputDecoration(labelText: 'Nome'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nome inválido';
                  }

                  if (value.trim().length < 3) {
                    return 'Nome muito pequeno, No mínimo 3 letras';
                  }

                  return null;
                },
                onSaved: (value) => _formData['name'] = value,                 
              ),
              TextFormField(
                initialValue: _formData['email'],
                decoration: InputDecoration(labelText: 'Email'),
                onSaved: (value) => _formData['email'] = value,
              ),
              TextFormField(
                initialValue: _formData['avatarUrl'],
                decoration: InputDecoration(labelText: 'URL do avatar'),
                onSaved: (value) => _formData['avatarUrl'] = value,
              ),
            ],
          ),
          ),
        ),
    );
  }
}
