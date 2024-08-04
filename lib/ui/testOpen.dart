import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Testopen extends StatefulWidget {
  const Testopen({super.key});

  @override
  State<Testopen> createState() => _TestopenState();
}

class _TestopenState extends State<Testopen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome"),
      ),
    );
  }
}
