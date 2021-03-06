import 'package:flutter/material.dart';
import 'package:trail/constants.dart';
import 'package:trail/screens/Home/components/menu_item.dart';

class CustomAppBar extends StatelessWidget {
    
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: kPrimaryColor,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
      shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    );
    
    @override



  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-2),
            blurRadius: 30,
            color:Colors.black.withOpacity(0.16)

            ,)
          ,]
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "images/logo.png",
            height: 25,
            alignment:Alignment.topCenter,
            ),
          SizedBox(width: 5,),
          Text("Foodie".toUpperCase(),
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
          ),
          Spacer(),
          MenuItem(title: "Home",press:(){}),
          MenuItem(title: "About",press:(){}),
          MenuItem(title: "Pricing",press:(){}),
          MenuItem(title: "Contact",press:(){}),
          MenuItem(title: "Login",press:(){}),
         TextButton(
          style: flatButtonStyle,
          onPressed: () { },
          child: Text('Get Started'),
        )
        ],
      ),
    );
  }
}
