import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kullanici Adi')),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: 1000,
              height: 150,
              padding: EdgeInsets.all(14),
            ),
            Container(
              color: Colors.red,
              width: 1000,
              height: 150,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 14),
            ),
          ],
        ),
      ),
    );
  }
}
