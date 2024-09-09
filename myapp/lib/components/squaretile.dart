import 'package:flutter/material.dart';

class Square extends StatelessWidget{
  final String imgPath;
  const Square({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Image.asset(
        imgPath,
        height: 40,
      ),
    );
  } 
}