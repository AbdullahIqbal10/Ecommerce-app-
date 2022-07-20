import 'package:flutter/material.dart';
import 'package:shop_app/components/techGadgetsProduct_card.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/screens/checkout_screen/checkout_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import '../../../constants.dart';
import '../../../models/techGadgets_model.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.7,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
         onTap: () {
                    showSearch(
                        context: context, delegate: CustomSearchDelegate());
                  },
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(9)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search product",
            prefixIcon:Icon(Icons.search)),
      ),
    );
  }
}


class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "TICKET",
    "HR MODULE",
    "TICKET",
    "HR MODULE",
    "TICKET",
    "HR MODULE",
  ];

  @override
  List<Widget> buildActions(BuildContext) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];

    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return Container(
          color: Colors.blue,
          child: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return Padding(
          padding: const EdgeInsets.all(6),
          child: GestureDetector(
            onTap: () {
              if (result == "TICKET") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CheckOutScreen()));
              }
              if (result == "HR MODULE") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckOutScreen()));
              }
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 40,
              width: double.infinity,
              child: Text(
                result,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        );
      },
    );
  }
}




