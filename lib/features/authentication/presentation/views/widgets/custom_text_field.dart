import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({Key? key,
   required this.onSaved, required this.labelText,
   this.obscureText=false,
   required this.validator,
    }) : super(key: key) ;
String? Function(String?)? validator;
 bool obscureText;
 final String? labelText;
 void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:12.0),
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0XFF001838),
              ),
              borderRadius: BorderRadius.circular(20)),
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0XFF001838), width: 2),
              borderRadius: BorderRadius.circular(20)),
          labelText: labelText,
          labelStyle: TextStyle(
          fontSize: 20, color: Color(0XFF001838), fontFamily: 'Fjalla'),
        ),
      ),
    );
  }
}
