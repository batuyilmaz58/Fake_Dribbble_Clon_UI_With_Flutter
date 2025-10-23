import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmoticonFaces extends StatelessWidget{
  final String emoticon;

  EmoticonFaces({required this.emoticon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(child: Text("$emoticon", style: TextStyle(fontSize: 28),)),
      ),
    );
  }
}
