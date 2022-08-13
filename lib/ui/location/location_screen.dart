import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/locations/bloc_location.dart';
import 'package:simple_code_tz_1/bloc/locations/location_events.dart';
import 'package:simple_code_tz_1/bloc/locations/location_states.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/ui/location/widgets/count_location_widget.dart';
import 'package:simple_code_tz_1/ui/location/widgets/location_list_widget.dart';
import 'package:simple_code_tz_1/ui/location/widgets/search_location_widget.dart';
import 'package:simple_code_tz_1/widgets/bottom_nav_bar_widget.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  static final isListView = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            padding: EdgeInsets.only(left: 16, right: 16, top: 24),
            child: CountLocationWidget(),
          ),
          BlocBuilder<BlocLocation, StateBlocLocation>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(),
                  ],
                ),
                data: (data) {
                  if (data.isEmpty) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Text(S.of(context).characterListIsEmpty)],
                    );
                  } else {
                    return LocationListWidget(
                      locations: data,
                    );
                  }
                },
                error: (error) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(error),
                        )
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(selectedTab: 1),
    );
  }
}
