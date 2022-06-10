import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/nz/new%20zealand%20S-shape.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://gentwenty.com/wp-content/uploads/2013/07/Superheroes.jpg'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://miro.medium.com/max/1000/1*IpYCScq59F-RNEMTJSFwXQ.jpeg',
            description: 'Marvel',
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
