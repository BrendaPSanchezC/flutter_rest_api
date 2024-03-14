import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText,borderEbable;

  const InputText({super.key, this.label='', this.keyboardType = TextInputType.text, this.obscureText = false, this.borderEbable =true,});

  @override
  Widget build(BuildContext context) {
    return       TextFormField(
      keyboardType: this.keyboardType,
      obscureText: this.obscureText,

        decoration: InputDecoration(
          labelText: this.label,
          contentPadding: EdgeInsetsDirectional.symmetric(vertical: 5),
          enabledBorder: this.borderEbable ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black12,
            ),
          ) : InputBorder.none,
        labelStyle: TextStyle(
          color: Colors.black45, 
          fontWeight: FontWeight.w500,
        ),
        ),
    );
  }
}