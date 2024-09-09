//import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/components/button.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          //bg image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/car.jpg"),
                fit: BoxFit.cover,
                ),
            ),
          ),
          
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Text("Car Shop", 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text("Power of Performance", 
                        style: TextStyle(
                          fontSize: 25,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Button(
                    onTap: () => Navigator.pushNamed(context, '/MainPage'), 
                    child: Text(
                      "Start Shopping", 
                      style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontSize: 20
                      )
                    )
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}