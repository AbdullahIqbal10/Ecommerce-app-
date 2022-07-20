import 'package:flutter/material.dart';
import 'package:shop_app/components/techGadgetsProduct_card.dart';
import 'package:shop_app/screens/category/general.dart';
import 'package:shop_app/screens/category/tech_gadgets.dart';

import '../../components/coustom_bottom_nav_bar.dart';
import '../../enums.dart';
import '../../models/techGadgets_model.dart';
import '../../size_config.dart';
import '../home/components/home_header.dart';

class Category extends StatelessWidget {
  static String routeName = "/category";
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
     
        body: 
            
            Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(46)),
                HomeHeader(),
                   TabBar(tabs: [
                            Tab(
                              child: Text('Tech Gadgets', style: TextStyle(color: Colors.black),),
                            ),
                            Tab(
                              child: Text('General', style: TextStyle(color: Colors.black),),
                            )
                          ]),
             
                Expanded(
                  child: TabBarView(
                    children: [
                      TechGadgets(),
                      General()
                    ],
                  ),
                ),
              ],
            ),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.category),
        
      ),
    );
  }
}
