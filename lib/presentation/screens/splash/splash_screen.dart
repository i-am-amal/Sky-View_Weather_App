import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sky_view_weather_app/application/home/home_screen_bloc.dart';
import 'package:sky_view_weather_app/application/splash_screen/splash_screen_bloc.dart';
import 'package:sky_view_weather_app/core/constants/constants.dart';
import 'package:sky_view_weather_app/presentation/widgets/error_handling.dart';
import 'package:sky_view_weather_app/presentation/screens/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    BlocProvider.of<SplashScreenBloc>(context)
        .add(const SplashScreenEvent.fetchDataEvent());

    return BlocListener<SplashScreenBloc, SplashScreenState>(
      listener: (context, state) {
        if (state.currentLatitude != null && state.currentLongitude != null) {
          BlocProvider.of<HomeScreenBloc>(context)
              .add(const HomeScreenEvent.fetchHomeDataEvent());
          Future.delayed(const Duration(seconds: 5), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          });
        } else if (state.errorMsg != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const ErrorScreen()),
          );
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(kLogoImage),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: height * 0.36),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: LoadingAnimationWidget.prograssiveDots(
                      color: Colors.purple,
                      size: 80,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
