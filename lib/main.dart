import 'package:first/common/component/custom_text_form_field.dart';
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
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(hintText: "이메일을 입력하세요",),
          ],
        )
      ),
    );
  }
}
