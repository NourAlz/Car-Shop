import 'package:flutter/material.dart';
import 'CartPage.dart';
import 'CategoryPage.dart';
import 'dart:math';
import 'package:intl/intl.dart';

class Orders extends StatefulWidget{
  const Orders({super.key});

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Orders>{
List<ItemCard> orders = getSold().cast<ItemCard>();

Widget build(BuildContext context){
  
  return Scaffold(
    appBar: AppBar(
        title : const Text(
                    "Orders",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
      ),

    body: Column(children: <Widget>[
      Expanded(child: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          var item = orders[index];
          return OrderCard(
            name: item.name,
            price: item.price,
            imagePath: item.imagePath,
          );
        },
        ))
    ],),

  );
}
}

class OrderCard extends StatefulWidget{
  final String name;
  final double price;
  final String imagePath;

  OrderCard({required this.name, required this.price, required this.imagePath});

  @override
  _OrderCardState createState() => _OrderCardState();
}

DateTime date = DateTime.now();
String formattedDate = DateFormat('yyyy-MM-dd').format(date);

class _OrderCardState extends State<OrderCard> {
  // Generate a random order number between 1000 and 9999
  final orderNumber = 1000 + Random().nextInt(9000);

  // Generate a random tracking number between 100000 and 999999
  final trackingNumber = 100000 + Random().nextInt(900000);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Order No. $orderNumber",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${formattedDate}", // Replace with your actual date variable
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0), // Add some vertical spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    widget.name,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Total: \$' + widget.price.toStringAsFixed(2),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0), // Add some vertical spacing
              Text(
                'Tracking No: $trackingNumber',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




