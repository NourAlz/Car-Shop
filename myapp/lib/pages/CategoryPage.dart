import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title : const Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
      ),
       body: ListView(
        children: <Widget>[
          _buildCategoryCard(context, 'Audi', 'assets/images/audi.jpg'),
          _buildCategoryCard(context, 'BMW', 'assets/images/bmw.jpg'),
          _buildCategoryCard(context, 'Dodge', 'assets/images/dodge.jpg'),
          _buildCategoryCard(context, 'Mercedes', 'assets/images/mercedes.jpg'),
          _buildCategoryCard(context, 'Accessories', 'assets/images/acc.jpg'),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, String title, String imagePath) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ItemsPage(title: title)),
        );
      },
      child: Container(
        height: 150,
        child: Card(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Text(title, 
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              )
              
            ),
            Container(
              height: 140,
              width: 150,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      )
    );
  }
}
List<ItemCard> _cart = [];
List<ItemCard> getCart() => _cart;

List<ItemCard> _fav = [];
List<ItemCard> getFav() => _fav;

//Items
dynamic a1 = ItemCard(imagePath: 'assets/images/a5.jpg', price: 47000, name: 'Audi A5', addToCart: () {_cart.add(a1);}, removeFromCart: () {_cart.remove(a1);}, addToFav: () {_fav.add(a1);}, removeFromFav: () {_fav.remove(a1);},);
dynamic a2 = ItemCard(imagePath: 'assets/images/q7.jpg', price: 60695, name: 'Audi Q7', addToCart: () {_cart.add(a2);},removeFromCart: () {_cart.remove(a2);},addToFav: () {_fav.add(a2);}, removeFromFav: () {_fav.remove(a2);},);
dynamic a3 = ItemCard(imagePath: 'assets/images/s5.jpg', price: 56395, name: 'Audi S5',addToCart: () {_cart.add(a3);}, removeFromCart: () {_cart.remove(a3);},addToFav: () {_fav.add(a3);}, removeFromFav: () {_fav.remove(a3);},);
dynamic a4 = ItemCard(imagePath: 'assets/images/etrongt.jpg', price: 106395, name: 'Audi Etron-Gt',addToCart: () {_cart.add(a4);}, removeFromCart: () {_cart.remove(a4);},addToFav: () {_fav.add(a4);}, removeFromFav: () {_fav.remove(a4);},);

dynamic m1 = ItemCard(imagePath: 'assets/images/amg-c63.jpg', price: 83000, name: 'Mercedes-AMG C63', addToCart: () {_cart.add(m1);}, removeFromCart: () {_cart.remove(m1);},addToFav: () {_fav.add(m1);}, removeFromFav: () {_fav.remove(m1);},);
dynamic m2 = ItemCard(imagePath: 'assets/images/amg-s63.jpg', price: 190000, name: 'Mercedes-AMG S63', addToCart: () {_cart.add(m2);}, removeFromCart: () {_cart.remove(m2);},addToFav: () {_fav.add(m2);}, removeFromFav: () {_fav.remove(m2);},);
dynamic m3 = ItemCard(imagePath: 'assets/images/benz sl.jpg', price: 91995, name: 'Mercedes-Benz SL', addToCart: () {_cart.add(m3);}, removeFromCart: () {_cart.remove(m3);},addToFav: () {_fav.add(m3);}, removeFromFav: () {_fav.remove(m3);},);
dynamic m4 = ItemCard(imagePath: 'assets/images/benz suv.jpg', price: 105550, name: 'Mercedes-Benz SUV',addToCart: () {_cart.add(m4);}, removeFromCart: () {_cart.remove(m4);},addToFav: () {_fav.add(m4);}, removeFromFav: () {_fav.remove(m4);},);

dynamic b1 = ItemCard(imagePath: 'assets/images/m3.jpg', price: 76995, name: 'BMW M3', addToCart: () {_cart.add(b1);}, removeFromCart: () {_cart.remove(b1);},addToFav: () {_fav.add(b1);}, removeFromFav: () {_fav.remove(b1);},);
dynamic b2 = ItemCard(imagePath: 'assets/images/m4.jpg', price: 75695, name: 'BMW M4', addToCart: () {_cart.add(b2);}, removeFromCart: () {_cart.remove(b2);},addToFav: () {_fav.add(b2);}, removeFromFav: () {_fav.remove(b2);},);
dynamic b3 = ItemCard(imagePath: 'assets/images/m5.jpg', price: 105495, name: 'BMW M5', addToCart: () {_cart.add(b3);}, removeFromCart: () {_cart.remove(b3);},addToFav: () {_fav.add(b3);}, removeFromFav: () {_fav.remove(b3);},);
dynamic b4 = ItemCard(imagePath: 'assets/images/m8.jpeg', price: 140795, name: 'BMW M8', addToCart: () {_cart.add(b4);}, removeFromCart: () {_cart.remove(b4);},addToFav: () {_fav.add(b4);}, removeFromFav: () {_fav.remove(b4);},);

dynamic d1 = ItemCard(imagePath: 'assets/images/challenger.jpg', price: 34395, name: 'Dodge Challenger', addToCart: () {_cart.add(d1);}, removeFromCart: () {_cart.remove(d1);},addToFav: () {_fav.add(d1);}, removeFromFav: () {_fav.remove(d1);},);
dynamic d2 = ItemCard(imagePath: 'assets/images/charger.jpg', price: 40000, name: 'Dodge Charger',addToCart: () {_cart.add(d2);}, removeFromCart: () {_cart.remove(d2);},addToFav: () {_fav.add(d2);}, removeFromFav: () {_fav.remove(d2);},);
dynamic d3 = ItemCard(imagePath: 'assets/images/hornet.jpg', price: 32995, name: 'Dodge Hornet',addToCart: () {_cart.add(d3);}, removeFromCart: () {_cart.remove(d3);},addToFav: () {_fav.add(d3);}, removeFromFav: () {_fav.remove(d3);},);
dynamic d4 = ItemCard(imagePath: 'assets/images/dart.jpg', price: 17990, name: 'Dodge Dart',addToCart: () {_cart.add(d4);}, removeFromCart: () {_cart.remove(d4);},addToFav: () {_fav.add(d4);}, removeFromFav: () {_fav.remove(d4);},);

dynamic c1 = ItemCard(imagePath: 'assets/images/phoneholder.jpg', price: 19.45, name: 'Phone Mount',addToCart: () {_cart.add(c1);}, removeFromCart: () {_cart.remove(c1);},addToFav: () {_fav.add(c1);}, removeFromFav: () {_fav.remove(c1);},);
dynamic c2 = ItemCard(imagePath: 'assets/images/neckpillow.jpg', price: 29.99, name: 'Neck Pillow',addToCart: () {_cart.add(c2);}, removeFromCart: () {_cart.remove(c2);},addToFav: () {_fav.add(c2);}, removeFromFav: () {_fav.remove(c2);},);
dynamic c3 = ItemCard(imagePath: 'assets/images/sticker.jpg', price: 10.00, name: 'Sticker',addToCart: () {_cart.add(c3);}, removeFromCart: () {_cart.remove(c3);},addToFav: () {_fav.add(c3);}, removeFromFav: () {_fav.remove(c3);},);
dynamic c4 = ItemCard(imagePath: 'assets/images/camera.jpg', price: 119.00, name: 'Camera',addToCart: () {_cart.add(c4);}, removeFromCart: () {_cart.remove(c4);},addToFav: () {_fav.add(c4);}, removeFromFav: () {_fav.remove(c4);},);

final Map<String, List<ItemCard>> items = {
  'Audi': [a1, a2, a3, a4],
  'Mercedes': [m1,m2,m3,m4],
  'BMW' : [b1,b2,b3,b4],
  'Dodge' : [d1,d2,d3,d4],
  'Accessories' : [c1,c2,c3,c4],
};

//Displaying Items
class ItemsPage extends StatelessWidget {
  final String title;

  ItemsPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal, 
        children: items[title] ?? [], // Get the items for the selected category
      ),
    );
  }
}

//Item Class
class ItemCard extends StatefulWidget {
  final String imagePath;
  final String name;
  final double price;
  final VoidCallback addToCart;
  final VoidCallback removeFromCart;
  final VoidCallback addToFav;
  final VoidCallback removeFromFav;

  ItemCard({
    required this.imagePath,
    required this.price,
    required this.name,
    required this.addToCart,
    required this.removeFromCart,
    required this.addToFav,
    required this.removeFromFav,
  });

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool _addedToCart = false;
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.6, // 60% of screen height
      width: screenSize.width * 0.9, // 90% of screen width
      child: Padding(
        padding: EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0, bottom: 100), 
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255,24, 123, 255),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(12), 
          ),
          
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
              children: <Widget>[
                Image.asset(
                  widget.imagePath,
                  width: 350, 
                  height: 200, 
                  fit: BoxFit.fill,
                ),

                const SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 5, left: 15),
                  child: Text(widget.name, 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),),
                ),

                Container(
                  margin: EdgeInsets.only(top: 15, left: 20, bottom: 70),
                  child: Text('Price: \$' + widget.price.toStringAsFixed(2), 
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                ),

                Row(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        if (!_addedToCart) {
                          widget.addToCart();
                        } else {
                          widget.removeFromCart();
                        }
                        setState(() {
                          _addedToCart = !_addedToCart;
                        });
                      },
                      child: Icon(_addedToCart ? Icons.remove_shopping_cart : Icons.shopping_cart),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (!_addedToCart) {
                          widget.addToFav();
                        } else {
                          widget.removeFromFav();
                        }
                        setState(() {
                          fav = !fav;
                        });
                      },
                      child: Icon(fav ? Icons.favorite : Icons.favorite_border),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}