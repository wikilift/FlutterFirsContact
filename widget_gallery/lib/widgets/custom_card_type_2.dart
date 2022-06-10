import 'package:flutter/material.dart';
import 'package:widget_gallery/themes/app_themes.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? description;

  const CustomCardType2({Key? key, required this.imageUrl, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            //match parent
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 700),
          ),
          if (description != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(description!),
            ),
        ],
      ),
    );
  }
}
