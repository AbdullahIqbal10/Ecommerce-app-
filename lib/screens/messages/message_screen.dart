import 'package:flutter/material.dart';

import '../../components/coustom_bottom_nav_bar.dart';
import '../../enums.dart';

class MessageScreen extends StatelessWidget {
  static String routeName = "/message";
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message', style: TextStyle(color: Colors.black),),
      ),
      body: ListView(children: [
        card(),
        card(),
        card(),
        card(),
        card(),
        card(),
        card(),
        card(),
        card(),
        card(),
        card(),
        card(),
      ]),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.message),
    );
  }
}

card() {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: ListTile(
      tileColor: Color.fromARGB(255, 239, 233, 233),
      leading: CircleAvatar(
        child: Icon(Icons.house),
      ),
      title: Text('fashions hug'),
      subtitle: Text('hello hi hello'),
    ),
  );
}
