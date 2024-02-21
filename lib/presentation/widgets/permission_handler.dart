import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class PermissionHandler extends StatelessWidget {
  final Widget child;

  const PermissionHandler({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LocationPermission>(
      future: Geolocator.requestPermission(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(); 
        } else {
          return child;
        }
      },
    );
  }
}
