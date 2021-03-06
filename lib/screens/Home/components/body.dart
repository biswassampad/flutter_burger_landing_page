import 'package:flutter/material.dart';
import 'package:trail/constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Burger".toUpperCase(),
          style: Theme.of(context).textTheme.headline1.copyWith(
            color:kTextColor,
            fontWeight: FontWeight.bold
          ),
          ),
          Text("Lorem epsum dolor sit amet, consectoture \nadispising alit,sed do eisumod tempor \nincidotr ut labor",
            style:TextStyle(
              fontSize: 30,
              color:kTextColor.withOpacity(0.34)
            )
          ),
          FittedBox(
              child: Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color:Color(0xFF372930),
                borderRadius: BorderRadius.circular(34)
              ),
              child: Row(
                children: <Widget>[
                  Container(padding:EdgeInsets.all(10),
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    color:kPrimaryColor,
                    shape:BoxShape.circle
                  ),
                  child:Container(
                    decoration: BoxDecoration(
                      color:Color(0xFF372930),
                      shape: BoxShape.circle
                    ),
                  )
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Get Started".toUpperCase(),
                  style: TextStyle(
                    color:Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                  ),
                  SizedBox(width: 15,)
                  ],
              ),
            ),
          )
        ],
      ),
    );
  }
}