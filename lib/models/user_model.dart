import 'package:flutter/material.dart';

class User {
  String firstName;
  String lastName;
  String email;
  String picture;
  String phone;
  int age;
  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.picture,
    required this.phone,
    required this.age
  });
}
