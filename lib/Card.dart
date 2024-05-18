import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'di/InheritedWidget.dart';

class SnackCard extends StatelessWidget {
  final String name;
  final String image;

  SnackCard({
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // Обновление выбранного десерта
        final userPreferences =
            UserPreferencesProvider.of(context)!.userPreferences;
          userPreferences.updateFavoriteSnack(name);
        Navigator.pop(context);
      },
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(image),
                fit: BoxFit.cover,
              ),
            ),
            child: CachedNetworkImage(
              imageUrl: image,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                child:
                    CircularProgressIndicator(value: downloadProgress.progress),
              ),
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error, color: Colors.red),
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 19,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
