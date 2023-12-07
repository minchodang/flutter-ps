import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
    fetchData();
  }

  var currentPosition;
  Function getLocation = () async {
    LocationPermission permission = await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      showToast(position.toString());
    } catch (e) {
      print('위치정보 실패입니다.');
    }
  };

  void fetchData() async {
    Response response = await get(Uri.parse(
        'https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1'));
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
    );
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: null,
          child: Text(
            'Get my location',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: style,
        ),
      ),
    );
  }
}
