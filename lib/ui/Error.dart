import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  String msg;

  ErrorScreen({required this.msg, super.key});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Error"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Expanded(
            child: Text(widget.msg),
          ),
        ),
      ),
    );
  }
}
