import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Image image;
  final String name;
  final String price;
  final String fullName;
  final Color colour;
  ItemCard({this.name, this.image, this.price, this.colour, this.fullName});

  @override
  Widget build(BuildContext context) {
//    Image image = decodeImage(File('test.webp').readAsBytesSync());
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13.0),
      ),
      shadowColor: Colors.black,
      borderOnForeground: true,
      child: Container(
        width: width / 1.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: height / 10,
              width: width / 5,
              child: image,
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: width / 10,
                  fontFamily: 'Qwigley',
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2),
            ),
            Text(
              "• " + '$fullName' + "• ",
              style: TextStyle(
                  fontFamily: 'Dosis',
                  fontWeight: FontWeight.w500,
                  fontSize: width / 27),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: width / 14,
                ),
                Container(
                  color: colour,
                  width: width / 6,
                  height: height / height,
                ),
                Container(
                  padding: EdgeInsets.only(top: width / 38, left: width / 28),
                  width: width / 5,
                  height: height / 18,
                  decoration: BoxDecoration(
                    border: Border.all(color: colour),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Text(
                    '$price Rs',
                    style: TextStyle(
                        color: colour,
                        fontSize: width / 28,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  color: colour,
                  width: width / 6,
                  height: height / height,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/images/tasty.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 70,
                    ),
                    Text(
                      'Tasty',
                      style: TextStyle(
                          fontSize: width / 25,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Dosis'),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/images/eat.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 70,
                    ),
                    Text(
                      'Delicious',
                      style: TextStyle(
                          fontSize: width / 25,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Dosis'),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/images/fast-food.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 70,
                    ),
                    Text(
                      'Hot',
                      style: TextStyle(
                          fontSize: width / 25,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Dosis'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
