import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Model {
  SvgPicture? getWeatherIcon(int condition) {
    if (condition < 300) {
      return SvgPicture.asset(
        'svg/climacon-cloud_lightening.svg',
        colorFilter: ColorFilter.mode(Colors.black87, BlendMode.srcIn),
      );
    } else if (condition < 600) {
      return SvgPicture.asset(
        'svg/climacon-cloud_snow_alt.svg',
        colorFilter: ColorFilter.mode(Colors.black87, BlendMode.srcIn),
      );
    } else if (condition == 800) {
      return SvgPicture.asset(
        'svg/climacon-sun.svg',
        colorFilter: ColorFilter.mode(Colors.black87, BlendMode.srcIn),
      );
    } else if (condition <= 804) {
      return SvgPicture.asset(
        'svg/climacon-cloud_sun.svg',
        colorFilter: ColorFilter.mode(Colors.black87, BlendMode.srcIn),
      );
    }
    return null;
  }

  Widget? getAirIcon(int index) {
    if (index == 1) {
      return Image.asset(
        'image/weather/good.png',
        width: 37,
        height: 35,
      );
    } else if (index == 2) {
      return Image.asset(
        'image/weather/fair.png',
        width: 37,
        height: 35,
      );
    } else if (index == 3) {
      return Image.asset(
        'image/weather/moderate.png',
        width: 37,
        height: 35,
      );
    } else if (index == 4) {
      return Image.asset(
        'image/weather/poor.png',
        width: 37,
        height: 35,
      );
    } else if (index == 5) {
      return Image.asset(
        'image/weather/bad.png',
        width: 37,
        height: 35,
      );
    }
    return null;
  }

  Widget? getAirCondition(int index) {
    if (index == 1) {
      return Text(
        '"매우좋음"',
        style: TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold,
        ),
      );
    } else if (index == 2) {
      return Text(
        '"좋음"',
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      );
    } else if (index == 3) {
      return Text(
        '"보통"',
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      );
    } else if (index == 4) {
      return Text(
        '"나쁨"',
        style: TextStyle(
          color: Colors.yellow,
          fontWeight: FontWeight.bold,
        ),
      );
    } else if (index == 5) {
      return Text(
        '"매우나쁨"',
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    return null;
  }
}
