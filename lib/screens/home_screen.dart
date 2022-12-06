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
      appBar: AppBar(
        title: Text('My Home Page'),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          // print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error'));
          } else {
            return UserWidget(user: snapshot.data!);
          }
        },
      ),
    );
  }
}
