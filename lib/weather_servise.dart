// import 'dart:convert';

// import 'package:paa_projek/weather_model.dart';

// class weatherservice {
//   static const BASE_URL =
//       'http://api.openweathermap.org/data/2.5/forecast?id=524901&appid={API key}';
//   final String apiKey;

//   weatherservice(this.apiKey);

//   Future<weather> getweather(String cityName) async {
//     final response = await http
//         .get(Uri.parse('$BASE_URL?q=$cityName&appid=$apiKey&unit=metric'));

//     if (response.statusCode == 200) {
//       return weather.fromJson(jsonDecode(response.body));
//     } else {
//       throw Exception('failed');
//     }
//   }

//   Future<String> getCurrentCity() async {
//     LocationPermission permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();



//       Position position = await geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);

//         List<Placemark> placemark = await placemarkFromCoordinates(position.latitude, position.longitude);
//         String? city = placemarks [0].locality;
        
//         return city ?? "";
//       )
//     }
//   }
// }
