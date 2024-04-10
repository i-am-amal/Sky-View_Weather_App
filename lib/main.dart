import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_view_weather_app/application/home/home_screen_bloc.dart';
import 'package:sky_view_weather_app/application/splash_screen/splash_screen_bloc.dart';
import 'package:sky_view_weather_app/presentation/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeScreenBloc(),
        ),
        BlocProvider(
          create: (context) => SplashScreenBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sky View',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
