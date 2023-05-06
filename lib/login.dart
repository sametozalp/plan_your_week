import 'package:flutter/material.dart';
import 'package:yap/signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Image.asset('assets/background.png').color,
      appBar: AppBar(
        title: Text('LOGIN'),
        backgroundColor: Colors.blue[900], //#18344A
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 55),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    'PLAN YOUR WEEK',
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 25,
                        fontFamily: 'GloriaHallelujah'),
                  ),
                ),
                TextFormField(
                  style: TextStyle(
                    color: Colors.white,
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
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_rounded),
                    labelText: "Password:",
                    labelStyle: TextStyle(color: Colors.grey[400]),
                    hintText: "Password:",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign IN'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red[400]),
                        ),
                      ),
                      Text('          '),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text('Sign UP'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red[400]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
