import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'CategoryPage.dart';

class FavoritePage extends StatefulWidget{
  const FavoritePage({super.key});

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<ItemCard> favs = getFav().cast<ItemCard>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text(
                    "Favorites",
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
              itemCount: favs.length,
              itemBuilder: (context, index){
                var item = favs[index];
                return FavItemCard(
                  imagePath: item.imagePath,
                  name: item.name,
                  removeFromFav: (){
                    setState(() {
                      favs.remove(item);
                    });
                  },
                );
              },
              ),
            ),
        ],
      ),
    );
  }
}

class FavItemCard extends StatefulWidget{
  final String imagePath;
  final String name;
  final Function removeFromFav;

  FavItemCard({
    required this.imagePath,
    required this.name,
    required this.removeFromFav,
  });

   @override
  _CartItemCardState createState() => _CartItemCardState();
}

class _CartItemCardState extends State<FavItemCard> {
  bool _addedToFav = true;
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
                    margin: EdgeInsets.only(top: 20.0,left: 20, bottom: 20),
                    child: Text(widget.name, 
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  
                  
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _addedToFav = !_addedToFav;
                        });
                        if (!_addedToFav) {
                          // Add your logic for adding to cart here
                          widget.removeFromFav();
                        } else {
                          widget.removeFromFav();
                          _addedToFav = true;
                          setState(() {});
                        }
                      },
                      child: Icon(Icons.favorite),
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