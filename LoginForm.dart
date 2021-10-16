import 'package:flutter/material.dart';

import 'Home.dart';

import '../models/user.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({ Key? key }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {

  var password = '';
  var username = '';
  var users = <User>[
    User(username: "Juan",password: "123"),
    User(username: "Andres",password: "321"),
    User(username: "Pablo",password: "000")
  ];

  void handleLogin(){
    for(var user in users){
      if(user.username == username){
        if(user.password == password){
          print("Logueado correctamente");
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyStatefulWidget()),
          );
        }else{
          print("Contraseña incorrecta");
        }
      }else{
        print("Su nombre de usuario no existe en la base de datos");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            obscureText: false,
            onChanged: (value){
              username = value;
            },
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Username',
      
            ),
           ),
          TextField(
            obscureText: true,
            onChanged: (value){
              password = value;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password'
            ),
          ),
          ElevatedButton(
          child: const Text('Ingresar'),
          onPressed: handleLogin,
        ),
        ],
      ),
    );
  }
}