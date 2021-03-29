import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './burger.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> categories = [
    'https://i.postimg.cc/X7CsD5wf/burger-1.png',
    'https://i.postimg.cc/fLQdy33N/birthday-cake.png',
    'https://i.postimg.cc/X7YCr6vp/beer.png',
    'https://i.postimg.cc/fLs3Z6FW/pizza-slice.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: bnb(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.short_text_sharp,
                      size: 40,
                    ),
                    Material(
                      elevation: 10,
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 28,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Delicious Food",
                  style: GoogleFonts.montserrat(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                            color: Colors.grey.shade500,
                            offset: Offset(3.0, 3.0),
                            blurRadius: 3.0),
                        Shadow(
                            color: Colors.white,
                            offset: Offset(-3.0, 3.0),
                            blurRadius: 3.0),
                      ]),
                ),
                Text(
                  "  We made fresh and healthy food",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  child: ListView.builder(
                    itemBuilder: (ctx, index) => Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 13.5),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(18),
                        child: Container(
                          width: 60,
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Image.network(categories[index]),
                          ),
                        ),
                      ),
                    ),
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  clipBehavior: Clip.none,
                  height: 250,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: ListView.builder(
                        clipBehavior: Clip.none,
                        itemCount: burgers.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, i) => menu(ctx, i)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Best Food",
                    style: GoogleFonts.montserrat(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                              color: Colors.grey.shade500,
                              offset: Offset(3.0, 3.0),
                              blurRadius: 3.0),
                          Shadow(
                              color: Colors.white,
                              offset: Offset(-3.0, 3.0),
                              blurRadius: 3.0),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://i.postimg.cc/QtDHJQN6/pexels-photo-3026808.jpg'))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget bnb(context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 25),
    child: Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[800]),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Icon(
              Icons.account_balance_outlined,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.message_outlined,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.person_outline_sharp,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
      ),
    ),
  );
}

Widget menu(ctx, i) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          child: Container(
            height: 200,
            width: 200,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 110,
                  ),
                  Text(burgers[i].name,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(burgers[i].desc,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          color: Colors.black26,
                          fontSize: 14)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(burgers[i].price,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 14))
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 25,
          right: 25,
          child: Icon(
            Icons.favorite_outline,
            color: Colors.black87,
          ),
        ),
        Positioned(
            bottom: 60,
            left: 10,
            child: Image.network(
              burgers[i].imgUrl,
              height: 250,
              width: 180,
            ))
      ],
    ),
  );
}
