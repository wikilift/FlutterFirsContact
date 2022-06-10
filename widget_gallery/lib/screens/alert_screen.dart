import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_gallery/themes/app_themes.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogCuppertino(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('titola'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(
                  height: 10,
                  width: 5,
                ),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'paco',
                    style: TextStyle(color: Colors.blue),
                  )),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('dismiss')),
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(

        //cierra al clickar en la sombra
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            title: const Text('titola'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(
                  height: 10,
                  width: 5,
                ),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: () {}, child: const Text('paco')),
                    TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('dismiss')),
                  ],
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Mostrar alerta',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                onPressed: () => Platform.isAndroid
                    ? displayDialogAndroid(context)
                    : displayDialogCuppertino(context)),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Mostrar alerta',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                onPressed: () => Platform.isAndroid
                    ? displayDialogAndroid(context)
                    : displayDialogCuppertino(context)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppTheme.primary,
          child: const Icon(
            Icons.close,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
