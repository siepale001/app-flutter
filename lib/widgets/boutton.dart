import 'package:flutter/material.dart';

class Boutton extends StatelessWidget {
  final String action;
  const Boutton({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 50,
      child: ElevatedButton(onPressed: () {}, child: Text(action),),
    );
  }
}
