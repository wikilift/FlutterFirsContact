import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);
  final list = const ["item1", "item2", "item3", "item4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("WidgetGallery"),
        ),
        body: ListView(
          children: [
            ...list
                .map((textVariable) => ListTile(
                      leading: const Icon(Icons.add_call),
                      title: Text(
                        textVariable,
                        textAlign: TextAlign.center,
                      ),
                      trailing: const Icon(Icons.arrow_right),
                    ))
                .toList(),
          ],
        ));
  }
}
