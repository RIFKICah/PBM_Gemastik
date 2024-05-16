// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
//import 'package:paa_projek/weather_servise.dart';
import 'widget_searchbar.dart';

import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recommendations',
      home: MyHomePage(),
    );
  }
}

class FoodItem {
  final String name;
  final FoodType type;

  FoodItem({required this.name, required this.type});
}

enum FoodType { hot, cold }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String searchTerm = "";

  // Sample data for recommended food items
  List<FoodItem> hotRecommendations = [
    FoodItem(name: 'Nasi Goreng', type: FoodType.hot),
    FoodItem(name: 'Pad Thai', type: FoodType.hot),
    FoodItem(name: 'Pizza', type: FoodType.hot),
    FoodItem(name: 'Tacos', type: FoodType.hot),
    FoodItem(name: 'Hamburger', type: FoodType.hot),
    FoodItem(name: 'Ramen', type: FoodType.hot),
    FoodItem(name: 'Butter Chicken', type: FoodType.hot),
    FoodItem(name: 'Falafel', type: FoodType.hot),
    FoodItem(name: 'Soup', type: FoodType.hot),
    FoodItem(name: 'Stew', type: FoodType.hot),
    FoodItem(name: 'Chili', type: FoodType.hot),
    FoodItem(name: 'Curry', type: FoodType.hot),
    FoodItem(name: 'Lasagna', type: FoodType.hot),
    FoodItem(name: 'Baked Potato', type: FoodType.hot),
    FoodItem(name: 'Grilled Cheese Sandwich', type: FoodType.hot),
  ];

  List<FoodItem> coldRecommendations = [
    FoodItem(name: 'Salad', type: FoodType.cold),
    FoodItem(name: 'Sandwich', type: FoodType.cold),
    FoodItem(name: 'Wrap', type: FoodType.cold),
    FoodItem(name: 'Sushi', type: FoodType.cold),
    FoodItem(name: 'Fruit Salad', type: FoodType.cold),
    FoodItem(name: 'Yogurt', type: FoodType.cold),
    FoodItem(name: 'Ice Cream', type: FoodType.cold),
    FoodItem(name: 'Gelato', type: FoodType.cold),
    FoodItem(name: 'Sorbet', type: FoodType.cold),
    FoodItem(name: 'Popsicle', type: FoodType.cold),
    FoodItem(name: 'Smoothie', type: FoodType.cold),
    FoodItem(name: 'Milkshake', type: FoodType.cold),
    FoodItem(name: 'Iced Coffee', type: FoodType.hot),
    FoodItem(name: 'Iced Tea', type: FoodType.hot),
    FoodItem(name: 'Lemonade', type: FoodType.cold),
    FoodItem(name: 'Fruit Juice', type: FoodType.cold),
    FoodItem(name: 'Sparkling Water', type: FoodType.cold),
    FoodItem(name: 'Coconut Water', type: FoodType.cold),
    FoodItem(name: 'Sports Drink', type: FoodType.cold),
    FoodItem(name: 'Watermelon', type: FoodType.cold),
    FoodItem(name: 'Cantaloupe', type: FoodType.cold),
    FoodItem(name: 'Strawberries', type: FoodType.cold),
    FoodItem(name: 'Blueberries', type: FoodType.cold),
  ];

  bool isHotWeather = true; // Assuming hot weather by default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Recommendations'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color:
                  const Color.fromARGB(0, 0, 0, 0), // Adjust color as desired
              width: 36.0, // Adjust border width (in pixels)
            ),
            // ... other decoration properties (optional)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetSearchbar(
                hintText: "Search for food...",
                onChanged: (value) {
                  setState(() {
                    searchTerm = value;
                  });
                },
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    isHotWeather ? 'Hot Weather' : 'Cold Weather',
                    style: TextStyle(fontSize: 14, color: Color(0xFF3F3F3F)),
                  ),
                  Switch(
                    value: isHotWeather,
                    onChanged: (newValue) {
                      setState(() {
                        isHotWeather = newValue;
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rekomendasi Makan & Minuman:',
                    style: TextStyle(fontSize: 14, color: Color(0xFF3F3F3F)),
                  ),
                ],
              ),

              // Text widget to display the recommendation
              Text(
                'Try this delicious dish: ${_getRecommendationText()}',
                style: TextStyle(fontSize: 24, color: Color(0xFF3F3F3F)),
              ),

              

              // ElevatedButton to generate a new recommendation
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Shuffle the appropriate recommendation list based on weather
                    if (isHotWeather) {
                      hotRecommendations.shuffle();
                    } else {
                      coldRecommendations.shuffle();
                    }
                  });
                },
                child: Text('Get Another Recommendation'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to get the recommendation text based on weather
  String _getRecommendationText() {
    List<FoodItem> recommendations;
    if (isHotWeather) {
      recommendations = hotRecommendations;
    } else {
      recommendations = coldRecommendations;
    }

    final selectedItem =
        recommendations[math.Random().nextInt(recommendations.length)];
    return '${selectedItem.name} - ${selectedItem.type}';
  }
}
