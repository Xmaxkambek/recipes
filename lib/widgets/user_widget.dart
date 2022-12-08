import 'package:flutter/material.dart';
import 'package:recipes/screens/home_screen.dart';
import '../models/user_model.dart';

class UserWidget extends StatelessWidget {
  Widget con(Text text1, double height, Text text) {
    Widget a = Padding(
      padding: const EdgeInsets.only(bottom: 2, left: 5, right: 5),
      child: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          height: height,
          child: Row(
            children: [text1, text],
          ),
          decoration: BoxDecoration(
              color: Colors.grey, border: Border.all(color: Colors.black)),
        ),
      ),
    );
    return a;
  }

  User user;
  UserWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Image.network(user.picture),
                ],
              ),
            ),
            con(Text('  FirstName:  '), 50, Text(user.firstName)),
            con(Text('  LastName:  '), 50, Text(user.lastName)),
            con(Text('  Email:         '), 50, Text(user.email)),
            con(Text('  Call:            '), 50, Text(user.phone)),
            con(Text('  Age:           '), 50, Text(user.age.toString())),
            // con(//Text(user.age))

            Padding(
                padding: const EdgeInsets.only(top: 40),
                child: TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, 'home');
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text(
                      'Refresh',
                      style: TextStyle(fontSize: 18),
                    )))
          ],
        ),
      ),
    );
  }
}
