import 'package:flutter/material.dart';
import 'package:trail/screens/Home/components/app_bar.dart';
import 'package:trail/screens/Home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
          body: Container(
        height: size.height,
        width:size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            Spacer(),
            Body(),
            Spacer(flex: 2,)
          ],
        ),
      ),
    );
  }
}