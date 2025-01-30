import 'package:first/common/const/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  // 외부에서 별도로 textField 마다 따로 정의해야 하는 것들은 파라미터로 정의한다.
  final String? hintText; // null 값 가능 처리
  final String? errorText;
  final bool obscureTexts;
  final bool autoFocus;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({
    required this.onChanged,
    this.hintText,
    this.errorText,
    this.obscureTexts = false,
    this.autoFocus = false,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: INPUT_BORDER_COLOR,
        width: 1.0,
      )
    );

    return TextFormField(
      cursorColor: PRIMARY_COLOR,
      //비밀번호 입력할 때만 사용함
      obscureText: obscureTexts, // true ->글자 작성시 별표처리 형
      autofocus: autoFocus, // 화면에 cursor 들어오면 자동으로 포커스
      onChanged: onChanged,
      decoration: InputDecoration( // Text필드 안에서 추가로 패딩을 적용할 떄는 InputDecoration을 사용하면 됨
        contentPadding: EdgeInsets.all(20),
        hintText: hintText, // Text 입력 전에 보이는 글자.
        errorText : errorText,
        hintStyle: TextStyle(
          color :BODY_TEXT_COLOR,
          fontSize : 14.0
        ),
        fillColor: INPUT_BG_COLOR,
        filled: true,
        // 모든 Input 상태의 기본 스타일 세팅
        border: baseBorder,
        focusedBorder: baseBorder.copyWith(
          borderSide: baseBorder.borderSide.copyWith(
            color: PRIMARY_COLOR,
          )
        )

      ),
    );
  }
}
