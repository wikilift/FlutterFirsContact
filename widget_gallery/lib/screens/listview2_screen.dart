import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);
  final list = const ["item1", "item2", "item3", "item4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("WidgetGallery"),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.add_call),
                  title: Text(
                    list[index],
                    textAlign: TextAlign.center,
                  ),
                  trailing: const Icon(
                    Icons.arrow_right,
                    color: Colors.indigo,
                  ),
                  onTap: () => print(list[index]),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: list.length));
  }
}
