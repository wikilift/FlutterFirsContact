import 'package:flutter/material.dart';

import 'package:widget_gallery/themes/app_themes.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //linear layout vertical
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
              size: 150.0,
            ),
            title: Text('Soy una taza'),
            subtitle: Text(
                'Mollit dolor voluptate aliqua Lorem id ad culpa minim amet duis tempor veniam nisi do. Laboris exercitation adipisicing consectetur reprehenderit cillum est pariatur id mollit amet sunt nisi officia Lorem. Ullamco nostrud consectetur anim nostrud ullamco occaecat eiusmod duis velit aliquip labore eiusmod labore minim.'),
          ),
          //linear layout horizontal
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(onPressed: () {}, child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
