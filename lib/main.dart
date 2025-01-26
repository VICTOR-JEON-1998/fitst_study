import 'package:flutter/material.dart';

void main() {
  runApp(
    _App(),
  );
}

// StatelessWidget :
class _App extends StatelessWidget{
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(),
      ),
    );
  }
}
