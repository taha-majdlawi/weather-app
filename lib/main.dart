import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/views/home_view.dart';

void main() async {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        theme: ThemeData(
        //  primarySwatch: getThemeColor(condition: ),
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}

Color getThemeColor({ required String condition}) {
  switch (condition) {
    case 'Sunny':
      return Colors.orange;
    case 'Clear':
      return Colors.blue;
    case 'Partly cloudy':
      return Colors.lightBlue;
    case 'Cloudy':
      return Colors.grey;
    case 'Overcast':
      return Colors.blueGrey;
    case 'Mist':
      return Colors.cyan;
    case 'Patchy rain possible':
      return Colors.lightBlueAccent;
    case 'Patchy snow possible':
      return Colors.indigo;
    case 'Patchy sleet possible':
      return Colors.teal;
    case 'Patchy freezing drizzle possible':
      return Colors.lightBlue;
    case 'Thundery outbreaks possible':
      return Colors.deepPurple;
    case 'Blowing snow':
      return Colors.lightBlue;
    case 'Blizzard':
      return Colors.white;
    case 'Fog':
      return Colors.grey;
    case 'Freezing fog':
      return Colors.lightBlue;
    case 'Patchy light drizzle':
      return Colors.lightGreen;
    case 'Light drizzle':
      return Colors.green;
    case 'Freezing drizzle':
      return Colors.cyan;
    case 'Heavy freezing drizzle':
      return Colors.blueGrey;
    case 'Patchy light rain':
      return Colors.lightBlueAccent;
    case 'Light rain':
      return Colors.blue;
    case 'Moderate rain at times':
      return Colors.blue[600]!;
    case 'Moderate rain':
      return Colors.blue[700]!;
    case 'Heavy rain at times':
      return Colors.blue[800]!;
    case 'Heavy rain':
      return Colors.blue[900]!;
    case 'Light freezing rain':
      return Colors.cyan[300]!;
    case 'Moderate or heavy freezing rain':
      return Colors.cyan[800]!;
    case 'Light sleet':
      return Colors.teal[300]!;
    case 'Moderate or heavy sleet':
      return Colors.teal[800]!;
    case 'Patchy light snow':
      return Colors.indigo[100]!;
    case 'Light snow':
      return Colors.indigo[300]!;
    case 'Patchy moderate snow':
      return Colors.indigo[500]!;
    case 'Moderate snow':
      return Colors.indigo[700]!;
    case 'Patchy heavy snow':
      return Colors.indigo[800]!;
    case 'Heavy snow':
      return Colors.lightBlue;
    case 'Ice pellets':
      return Colors.lightBlueAccent;
    case 'Light rain shower':
      return Colors.blueAccent[100]!;
    case 'Moderate or heavy rain shower':
      return Colors.blueAccent[400]!;
    case 'Torrential rain shower':
      return Colors.blueAccent[700]!;
    case 'Light sleet showers':
      return Colors.teal[300]!;
    case 'Moderate or heavy sleet showers':
      return Colors.teal[600]!;
    case 'Light snow showers':
      return Colors.indigo[200]!;
    case 'Moderate or heavy snow showers':
      return Colors.indigo[600]!;
    case 'Light showers of ice pellets':
      return Colors.cyan[300]!;
    case 'Moderate or heavy showers of ice pellets':
      return Colors.cyan[700]!;
    case 'Patchy light rain with thunder':
      return Colors.deepPurple[300]!;
    case 'Moderate or heavy rain with thunder':
      return Colors.deepPurple[700]!;
    case 'Patchy light snow with thunder':
      return Colors.deepPurpleAccent[100]!;
    case 'Moderate or heavy snow with thunder':
      return Colors.deepPurpleAccent[400]!;
    default:
      return Colors.grey; // Fallback color
  }
}
