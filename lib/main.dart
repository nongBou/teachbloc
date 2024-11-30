import 'package:day4/view/auth/login.dart';
import 'package:day4/viewmodel/homepage/homepage_bloc.dart';
import 'package:day4/viewmodel/homepage/homepage_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
