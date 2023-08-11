import "package:flutter/material.dart";
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            color: Color(0xFF4C53A5),
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "DP Shop",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
          
            // badgeAnimation:badges.BadgeAnimation.scale(),

            badgeStyle: badges.BadgeStyle(
              padding: EdgeInsets.all(7),
              badgeColor: Colors.red,
              
            ),

            badgeContent: Text('3',
            style: TextStyle(
              color: Colors.white,
            )),
            
            
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "cartPage");
              },
              child:Icon(
                Icons.shopping_bag_outlined,
                color: Color(0xFF4C53A5),
                size: 32 ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
