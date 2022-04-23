import 'package:flutter/material.dart';
import 'package:vande_mission/helper/app_color.dart';
import 'package:vande_mission/widgets/main_widget.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const MainWidget(child: Center(child: Text("Login Screen1",)), color: white);
  }
}
