import 'package:flutter/material.dart';

class CustomTextFeld extends StatelessWidget {
  final TextEditingController controller;
  final String hintTex ;
  const CustomTextFeld({Key? key, required this.controller,  required this.hintTex,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration:  InputDecoration(
        hintText:hintTex,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black45,
          ),
        ),


        
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black45,
          ),
        ),
      ),
      validator: (val) {},
    );
  }
}
