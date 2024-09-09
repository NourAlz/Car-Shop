import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/components/button.dart';
import 'CategoryPage.dart';


class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}
List<ItemCard> sold = [];
List<ItemCard> getSold() => sold;

class _CartPageState extends State<CartPage> {
  List<ItemCard> cart = getCart().cast<ItemCard>();

  @override
  Widget build(BuildContext context) {
    var totalPrice = cart.fold(0.0, (total, item) => total + (item.price));


    return Scaffold(
      appBar: AppBar(
        title : const Text(
                    "Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                var item = cart[index];
                return CartItemCard(
                  
                  imagePath: item.imagePath,
                  price: item.price,
                  name: item.name,
                  removeFromCart: () {
                    setState((){
                      totalPrice = totalPrice - item.price;
                      cart.remove(item);
                    });
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Total Price: \$' + totalPrice.toString(),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Button(
                    onTap: () {
                      setState(() {
                        sold.addAll(cart);
                        cart.clear();
                        totalPrice = 0;
                        });
                      },
 
                    child: Text(
                      "Check Out", 
                      style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontSize: 25
                      )
                    )
                  ),
            ),
        ],
      ),
    );
  }
}

class CartItemCard extends StatefulWidget {
  final String imagePath;
  final String name;
  final double price;
  final Function removeFromCart;

  CartItemCard({
    required this.imagePath,
    required this.price,
    required this.name,
    required this.removeFromCart,
  });

  @override
  _CartItemCardState createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  bool _addedToCart = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Card(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Text(widget.name, 
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(left: 20.0, top: 10.0), // Add some top margin for spacing
                    child: Text('Price: \$' + widget.price.toStringAsFixed(2), 
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 16,
                      ),
                    ),
                  ),
                  
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _addedToCart = !_addedToCart;
                        });
                        if (!_addedToCart) {
                          // Add your logic for adding to cart here
                          widget.removeFromCart();
                        } else {
                          widget.removeFromCart();
                          _addedToCart = true;
                          setState(() {});
                        }
                      },
                      child: Icon(Icons.remove_shopping_cart),
                    ),
                ],
              ),
            ),

            Container(
              height: 140,
              width: 150,
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


