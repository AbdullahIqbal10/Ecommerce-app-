import 'package:flutter/material.dart';

import '../../components/coustom_bottom_nav_bar.dart';
import '../../components/techGadgetsProduct_card.dart';
import '../../enums.dart';
import '../../models/techGadgets_model.dart';
import '../../size_config.dart';
import '../home/components/home_header.dart';


class TechGadgets extends StatelessWidget {
  const TechGadgets({Key? key}) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        // body: Center(child: Text("categories")),
    
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: ListView(children: [
          
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProductCard(product: demoProducts[0]),
                ProductCard(product: demoProducts[1]),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
             
              children: [
                ProductCard(product: demoProducts[2]),
                ProductCard(product: demoProducts[3]),
              ],
            ),
            SizedBox(
              height: 10,
            ),
              Row(
             
              children: [
                ProductCard(product: demoProducts[4]),
                ProductCard(product: demoProducts[5]),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Row(
              children: [
                ProductCard(product: demoProducts[6]),
                
              ],
            ),
            
            
          ]),
        ),
        
    
    );
  }
}