import 'package:flutter/material.dart';
import 'package:shop_app/components/GeneralProduct_card.dart';

import '../../components/coustom_bottom_nav_bar.dart';
import '../../components/techGadgetsProduct_card.dart';
import '../../enums.dart';
import '../../models/techGadgets_model.dart';
import '../../size_config.dart';
import '../home/components/home_header.dart';

class General extends StatelessWidget {
  const General({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return 
      Scaffold(
        // body: Center(child: Text("categories")),
    
        body: ListView(children: [
          
  
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            //   GeneralProductCard(product: demoProducts[0]),
            //  GeneralProductCard(product: demoProducts[1])
            ],
          ),
           SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProductCard(product: demoProducts[2]),
              ProductCard(product: demoProducts[3]),
            ],
          ),
          
        ]),
        
    
    );
  }
}