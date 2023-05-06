import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SignUp')),
        body: Form(
          key: _formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'please';
                    }
                    return null;
                  },
                  controller: email,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "E-Mail:",
                    labelStyle: TextStyle(color: Colors.grey[400]),
                    hintText: "E-Mail:",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                  ),
                ),
                TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'please';
                    }
                    return null;
                  },
                  style: TextStyle(
                    //sdjsa@gmail.com
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: "Password:",
                    labelStyle: TextStyle(color: Colors.grey[400]),
                    hintText: "Password:",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Sign();
                  },
                  child: Text('Sign UP'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red[400]),
                  ),
                ),
              ]),
        ));
  }
}

final _formKey = GlobalKey();
Sign() async {
  try{
await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email.text, password: password.text);
  }on FirebaseAuthException catch (e){
    print(e);
  }
  
}
