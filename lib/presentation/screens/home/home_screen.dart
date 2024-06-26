import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_view_weather_app/application/home/home_screen_bloc.dart';
import 'package:sky_view_weather_app/core/constants/constants.dart';
import 'package:sky_view_weather_app/presentation/widgets/custom_text.dart';
import 'package:sky_view_weather_app/presentation/widgets/date_functions.dart';
import 'package:sky_view_weather_app/presentation/widgets/privacy_policy.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchTextController = TextEditingController();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.grey[50],
                    title: const Text('Exit App?'),
                    content:
                        const Text('Are you sure you want to exit the app?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text('No'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text('Yes'),
                      ),
                    ],
                  );
                }) ??
            false;
      },
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
          BlocProvider.of<HomeScreenBloc>(context)
              .add(const HomeScreenEvent.visibilityChange());
        },
        child: Scaffold(
          body: Stack(
            children: [
              ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaY: 1, sigmaX: 1),
                child: Image.asset(
                  kHomeImage,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: BlocListener<HomeScreenBloc, HomeScreenState>(
                    listener: (context, state) {
                      if (state.errorMsg != null &&
                          state.errorMsg!.isNotEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Row(
                              children: [
                                const Icon(Icons.error_outline_sharp,
                                    color: Colors.white),
                                const SizedBox(width: 15),
                                Flexible(
                                  child: Text(
                                    state.errorMsg!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            duration: const Duration(seconds: 3),
                            backgroundColor: Colors.red,
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        );
                        BlocProvider.of<HomeScreenBloc>(context)
                            .add(const HomeScreenEvent.clearMsg());
                      }
                    },
                    child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
                      builder: (context, state) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height * 0.07),
                            InkWell(
                              child: Text(
                                state.name ?? "",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 35),
                              ),
                              onTap: () {
                                BlocProvider.of<HomeScreenBloc>(context).add(
                                    const HomeScreenEvent.changeVisibility());
                              },
                            ),
                            SizedBox(height: height * 0.02),
                            Visibility(
                              visible: state.searchVisibility,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  color: Colors.white24,
                                  child: TextFormField(
                                    controller: searchTextController,
                                    style: const TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        suffixIcon: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  BlocProvider.of<
                                                              HomeScreenBloc>(
                                                          context)
                                                      .add(HomeScreenEvent
                                                          .searchLocation(
                                                              locationName:
                                                                  searchTextController
                                                                      .text));
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                icon: const Icon(Icons.search,
                                                    color: Colors.white)),
                                            IconButton(
                                                onPressed: () {
                                                  searchTextController.clear();
                                                },
                                                icon: const Icon(
                                                  Icons.clear,
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),
                                        hintText: '   Search',
                                        hintStyle: const TextStyle(
                                            color: Colors.white,
                                            fontStyle: FontStyle.italic,
                                            letterSpacing: 0.5)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.06),
                            Row(
                              children: [
                                Text(
                                  state.temp.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 70),
                                ),
                                SizedBox(width: width * 0.03),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      '°C',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Text(
                                      state.weather ?? "error",
                                      style: const TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Text(
                              '${DateTime.now().day} ${dateTimeToMonth(DateTime.now())} ${dateTimeToWeekDay(DateTime.now())}',
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.white),
                            ),
                            SizedBox(height: height * 0.1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    const CustomText(
                                        content: 'Feels like', size: 15),
                                    CustomText(
                                        content: '${state.feelsLike}°C',
                                        size: 30),
                                  ],
                                ),
                                Column(
                                  children: [
                                    const CustomText(
                                        content: 'Humidity', size: 15),
                                    CustomText(
                                        content: '${state.humidity}%',
                                        size: 30),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.06),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    const CustomText(
                                        content: 'NNE Wind', size: 15),
                                    CustomText(
                                        content: state.visibility != null
                                            ? '${(state.visibility! / 1000).toStringAsFixed(0)} km/hr'
                                            : '',
                                        size: 20),
                                  ],
                                ),
                                Column(
                                  children: [
                                    const CustomText(
                                        content: 'Max Temp', size: 15),
                                    CustomText(
                                        content: '${state.maxTemp} °C',
                                        size: 20),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.06),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    const CustomText(
                                        content: 'Visibility', size: 15),
                                    CustomText(
                                        content: state.visibility != null
                                            ? '${(state.visibility! / 1000).toStringAsFixed(0)} km'
                                            : '',
                                        size: 20),
                                  ],
                                ),
                                Column(
                                  children: [
                                    const CustomText(
                                        content: 'Air pressure', size: 15),
                                    CustomText(
                                        content: '${state.pressure} hPa',
                                        size: 20),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.08),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                  onPressed: () {
                                    showPrivacyPolicyDialog(context);
                                  },
                                  icon: const Icon(
                                    Icons.privacy_tip,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(height: height * 0.01),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
