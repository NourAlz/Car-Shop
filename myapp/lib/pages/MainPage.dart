import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
//import 'package:myapp/components/button.dart';
import 'package:myapp/pages/CartPage.dart';
import 'package:myapp/pages/CategoryPage.dart';
import 'package:myapp/pages/FavoritePage.dart';
import 'package:myapp/pages/ProfilePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: PreferredSize(
      preferredSize: Size.fromHeight(200),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/carmain.jpg",
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Car Shop",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),

    body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(5), 
    child: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255,24, 123, 255),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(12), 
          ),
          child: Column(
            children: <Widget>[
              Text('Ride The Future', 
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),

              const Text('With Mercedes Future Vision AVTR', 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                height: 200,
                child: Image.asset(
                  'assets/images/vision.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    'assets/images/phoneholder.jpg', // Replace with your image path
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Expanded(
                    child: Text(
                      'Check Our Newest Accessories', // Replace with your text
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
),

  );
}

}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0; // Add this line

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    CategoryPage(),
    CartPage(),
    FavoritePage(),
    ProfilePage(),
    
  ]; // Add this line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: _pages.elementAt(_selectedIndex), // Add this line
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).colorScheme.onPrimary,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            color: Theme.of(context).colorScheme.primary,
            activeColor: Theme.of(context).colorScheme.secondary,
            tabBackgroundColor: Theme.of(context).colorScheme.background,
            padding: const EdgeInsets.all(15),
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index; // Add this line
              });
            },
            tabs: const [
              GButton(icon: Icons.home),
              GButton(icon: Icons.shopping_cart),
              GButton(icon: Icons.shopping_bag),
              GButton(icon: Icons.favorite),
              GButton(icon: Icons.person),
            ],
          ),
        ),
      ),
    );
  }
}
