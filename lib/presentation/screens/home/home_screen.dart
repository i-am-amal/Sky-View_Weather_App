import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_view_weather_app/application/home/home_screen_bloc.dart';

import '../../../core/constants/constants.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/date_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeScreenBloc>(context)
        .add(const HomeScreenEvent.fetchHomeDataEvent());

    bool searchVisibility = false;
    TextEditingController searchTextController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaY: 3, sigmaX: 3),
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
              child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 80),
                      InkWell(
                        child: Text(
                          state.name ?? "",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 35),
                        ),
                        onTap: () {
                          // setState(() {
                          searchVisibility = true;
                          // });
                        },
                      ),
                      const SizedBox(height: 20),

                      Visibility(
                        visible: searchVisibility,
                        child: TextFormField(
                          controller: searchTextController,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              suffixIcon: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        // findGeoLoc(searchTextController.text);
                                      },
                                      icon: const Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {
                                        searchTextController.clear();
                                        // setState(() {
                                        // searchVisibility = false;
                                        // }

                                        // );
                                      },
                                      icon: const Icon(
                                        Icons.clear,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                              hintText: 'Search',
                              hintStyle: const TextStyle(color: Colors.white)),
                        ),
                      ),

                      //////
                      const SizedBox(height: 80),
                      Row(
                        children: [
                          Text(
                            state.temp.toString(),

                            // widget.weatherObj?.main?.temp?.toStringAsFixed(0) == null
                            //     ? '--'
                            //     : widget.weatherObj!.main!.temp!.toStringAsFixed(0),

                            style: const TextStyle(
                                color: Colors.white, fontSize: 70),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '°C',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                state.weather ?? "error",
                                // widget.weatherObj?.weather?[0].description == null
                                //     ? ''
                                //     : '${widget.weatherObj!.weather?[0].description}',
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${DateTime.now().day} ${dateTimeToMonth(DateTime.now())} ${dateTimeToWeekDay(DateTime.now())}',
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      const SizedBox(height: 80),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              CustomText(content: 'Feels like', size: 15),
                              CustomText(
                                  content: '${state.feelsLike}°C', size: 30),
                            ],
                          ),
                          Column(
                            children: [
                              CustomText(content: 'Humidity', size: 15),
                              CustomText(
                                  content: '${state.humidity}%', size: 30),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              CustomText(content: 'NNE Wind', size: 15),
                              CustomText(
                                  content: state.visibility != null
                                      ? '${(state.visibility! / 1000).toStringAsFixed(0)} km/hr'
                                      : '',
                                  size: 20),
                            ],
                          ),
                          Column(
                            children: [
                              CustomText(content: 'Max Temp', size: 15),
                              CustomText(
                                  content: '${state.maxTemp} °C', size: 20),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              CustomText(content: 'Visibility', size: 15),
                              CustomText(
                                  content: state.visibility != null
                                      ? '${(state.visibility! / 1000).toStringAsFixed(0)} km'
                                      : '',
                                  size: 20),
                            ],
                          ),
                          Column(
                            children: [
                              CustomText(content: 'Air pressure', size: 15),
                              CustomText(
                                  content: '${state.pressure} hPa', size: 20),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
