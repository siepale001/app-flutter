import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String label;
  final String hint;
  const Input({super.key, required this.label , required this.hint});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      margin: EdgeInsets.only(top: 23),
      child: TextFormField(
        style: TextStyle(fontSize: 15),
        decoration: InputDecoration(
          label: Text(label),
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "veillez saisir votre$label";
          }
          return null;
        },
      ),
    );
  }
}
