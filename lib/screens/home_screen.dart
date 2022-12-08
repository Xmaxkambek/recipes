import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../services/service.dart';
import '../widgets/user_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // print('build function');
    return Scaffold(
      backgroundColor: Color(0xff181818),
      // appBar: AppBar(
      //   backgroundColor: Colors.blueGrey,
      //   title: Text('My Home Page'),
      // ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          // print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'No Internit ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'home');
                        },
                        child:Text(
                          'Refresh',
                         
                        )))
              ],
            );
          } else {
            return UserWidget(user: snapshot.data!);
          }
        },
      ),
    );
  }
}
