import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    debugPrint('$position');
  }

  // void chckPermission() async {
  //   LocationPermission permission = await Geolocator.requestPermission();
  //   debugPrint('$permission');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // chckPermission();

            getLocation();
          },
          child: const Text(
            'Get Location',
          ),
        ),
      ),
    );
  }
}
