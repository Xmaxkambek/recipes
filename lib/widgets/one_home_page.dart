import 'package:flutter/material.dart';
import '../models/user_model.dart';

class OneHomePage extends StatelessWidget {
  User i;
OneHomePage({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Randomuser Person '),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('img/person.jpg'),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: TextButton(
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
