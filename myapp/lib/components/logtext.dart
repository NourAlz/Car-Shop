import 'package:flutter/material.dart';

class LogTextField extends StatelessWidget{
  final controller;
  final String hint;
  final bool obsecure;

  const LogTextField({super.key, this.controller, required this.hint, required this.obsecure});

  @override
  Widget build(BuildContext context){
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
                ),
                hintText: hint,
                hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 16)
              ),
            ),
          );
  }
}