import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/locations/bloc_location.dart';
import 'package:simple_code_tz_1/bloc/locations/location_events.dart';
import 'package:simple_code_tz_1/bloc/locations/location_states.dart';
import 'package:simple_code_tz_1/ui/locations/widgets/count_location_widget.dart';
import 'package:simple_code_tz_1/ui/locations/widgets/location_list_widget.dart';
import 'package:simple_code_tz_1/ui/locations/widgets/search_location_widget.dart';
import 'package:simple_code_tz_1/widgets/bottom_nav_bar_widget.dart';
import 'package:simple_code_tz_1/widgets/modal_error_widget.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                SearchLocationWidget(
                  onChanged: (value) {
                    BlocProvider.of<BlocLocation>(context).add(
                      EventLocationFilterByName(
                        value.toLowerCase(),
                      ),
                    );
                  },
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: CountLocationWidget(),
                ),
                Expanded(
                  child: BlocBuilder<BlocLocation, StateBlocLocation>(
                    buildWhen: (oldState, currentState) {
                      if (oldState.runtimeType != currentState.runtimeType) {
                        return true;
                      } else {
                        final oldStateLenght = oldState.mapOrNull(
                          data: (state) => state.data.length,
                        );
                        final currentStateLenght = currentState.mapOrNull(
                          data: (state) => state.data.length,
                        );
                        return oldStateLenght != currentStateLenght;
                      }
                    },
                    builder: (context, state) {
                      return state.map(
                        initial: (_) => const SizedBox.shrink(),
                        loading: (_) => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            CircularProgressIndicator(),
                          ],
                        ),
                        data: (state) =>
                            LocationListWidget(locations: state.data),
                        error: (state) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text(state.error),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          BlocConsumer<BlocLocation, StateBlocLocation>(
            builder: (context, state) {
              final isLoading = state.maybeMap(
                data: (state) => state.isLoading,
                orElse: () => false,
              );
              return Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: isLoading
                    ? const LinearProgressIndicator()
                    : const SizedBox.shrink(),
              );
            },
            listener: (context, state) {
              state.mapOrNull(
                data: (state) {
                  if (state.errorMessage != null) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const ModelErrorWidget();
                      },
                    );
                  }
                },
              );
            },
          )
        ],
      ),
      bottomNavigationBar: const BottomNavBar(selectedTab: 1),
    );
  }
}
