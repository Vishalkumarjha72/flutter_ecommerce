import "package:flutter/material.dart";
import "package:shopping_app/widgets/CartAppBar.dart";
import "package:shopping_app/widgets/CartBottomNavBar.dart";
import "package:shopping_app/widgets/CartItemSamples.dart";

class CartPage extends StatelessWidget{
  const CartPage ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),

          Container(
            //Temporary height 
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),

            child: Column(
              children: [
                CartItemSamples(),
                Container(
                  // decoration: BoxDecoration(
                  //   color: Color(0xFF4C53A5),
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                  padding: EdgeInsets.all(10),

                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF4C53A5),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Add Coupon Code",
                          style: TextStyle(
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),


                )
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),

    );
  }
}

