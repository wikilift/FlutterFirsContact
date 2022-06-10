import 'package:flutter/material.dart';
import 'package:widget_gallery/router/app_routes.dart';
import 'package:widget_gallery/themes/app_themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Componentes Flutter'),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(AppRoutes.menuOptions[index].name.toString()),
                leading: Icon(
                  AppRoutes.menuOptions[index].icon,
                  color: AppTheme.primary,
                ),
                onTap: () {
                  /*final route = MaterialPageRoute(
                  builder: (context) => const ListView1Screen());
              Navigator.push(context, route);*/
                  Navigator.pushNamed(
                      context, AppRoutes.menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
