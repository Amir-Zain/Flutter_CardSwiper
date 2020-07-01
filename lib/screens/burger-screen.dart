import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food/screens/cake-screen.dart';
import 'package:food/screens/ice-screen.dart';
import 'package:food/widgets/item-card.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:provider/provider.dart';
import 'package:food/models/NavData.dart';

class BurgerScreen extends StatefulWidget {
  @override
  _BurgerScreenState createState() => _BurgerScreenState();
}

class _BurgerScreenState extends State<BurgerScreen> {
  Color inactiveColor = Colors.white30;
  Color activeColor = Colors.white;
  List<ItemCard> sliders = [
    ItemCard(
      name: 'Burger',
      fullName: 'McDonald\'s Big Mac',
      price: '400',
      image: Image(
        image: Svg(
          'assets/images/burger.svg',
        ),
      ),
      colour: Colors.yellow[700],
    ),
    ItemCard(
      name: 'Pizza',
      fullName: 'Dominoz Pizza',
      price: '600',
      image: Image(
        image: Svg(
          'assets/images/pizza.svg',
        ),
      ),
      colour: Colors.yellow[700],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var _currentIndex = Provider.of<NavData>(context).index;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBscreenColor,
        body: Column(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(top: height / 60),
                child: Text(
                  'Food Cards',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width / 10,
                      fontFamily: 'Dosis',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: height / 30,
            ),
            Container(
              child: CarouselSlider(
                items: sliders,
                options: CarouselOptions(
                    initialPage: 0,
                    autoPlay: true,
                    height: height / 1.5,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        print(index);
                      });
                    }),
              ),
            ),
            SizedBox(
              height: height / 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Provider.of<NavData>(context).updateIndex(0);
                  },
                  padding: EdgeInsets.all(1),
                  child: Image(
                    image: Svg(
                      'assets/images/bottom_burger.svg',
                    ),
                    height: height / 15,
                    width: width / 10,
                    color: _currentIndex == 0 ? activeColor : inactiveColor,
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Provider.of<NavData>(context, listen: false).updateIndex(1);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return IceCreamScreen();
                    }));
                  },
                  padding: EdgeInsets.all(1),
                  child: Image(
                    image: Svg(
                      'assets/images/bottom_ice_cream.svg',
                    ),
                    height: height / 15,
                    width: width / 10,
                    color: _currentIndex == 1 ? activeColor : inactiveColor,
                  ),
                ),
                FlatButton(
                  splashColor: Colors.transparent,
                  padding: EdgeInsets.all(1),
                  onPressed: () {
                    Provider.of<NavData>(context, listen: false).updateIndex(2);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CakeScreen();
                    }));
                  },
                  child: Image(
                    image: Svg(
                      'assets/images/bottom_cake.svg',
                    ),
                    height: height / 15,
                    width: width / 10,
                    color: _currentIndex == 2 ? activeColor : inactiveColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
