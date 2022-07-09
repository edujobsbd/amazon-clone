import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPres;
  const CustomButtons({
    required this.text, required this.onPres,
    }) ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      style:ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
      ) ,
        onPressed: onPres,
    );
  }
}
