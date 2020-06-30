import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/slider_images/slider_image_one.png'),
          AssetImage('assets/images/slider_images/slider_image_two.jpg'),
          AssetImage('assets/images/slider_images/slider_image_three.png'),
          AssetImage('assets/images/slider_images/slider_image_four.png')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotColor: Colors.green,
        indicatorBgPadding: 2.0,
        borderRadius: true,
        dotBgColor: Colors.red,
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('Image Carousel Flutter'),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 16.0),
            image_carousel,
            SizedBox(height: 32.0),
            Text(
              'Image Carousel Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              'package: https://pub.dev/packages/carousel_pro',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
                color: Colors.blue,
              ),
            )
          ],
        ));
  }
}
