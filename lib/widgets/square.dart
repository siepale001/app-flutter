import 'package:fayoven/pages/homePage.dart';
import 'package:flutter/material.dart';

class Carre extends StatelessWidget {
 final String tof;
  const Carre({super.key, required this.tof});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightGreenAccent),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      child: GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  },
  child: Image.network(tof,
      height: 20,
      
    ),
)
    );
  }
}
