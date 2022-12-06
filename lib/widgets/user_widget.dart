import 'package:flutter/material.dart';
import '../models/user_model.dart';

class UserWidget extends StatelessWidget {
  User user;
  UserWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(user.firstName));
  }
}
