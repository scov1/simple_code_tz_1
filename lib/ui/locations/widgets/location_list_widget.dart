import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/locations/bloc_location.dart';
import 'package:simple_code_tz_1/bloc/locations/location_events.dart';
import 'package:simple_code_tz_1/data/models/location.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/ui/locations/widgets/location_card_widget.dart';

class LocationListWidget extends StatelessWidget {
  final List<Location> locations;
  const LocationListWidget({Key? key, required this.locations})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (locations.isEmpty) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(S.of(context).locationListIsEmpty),
          ),
        ],
      );
    } else {
      return RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<BlocLocation>(context).add(
            EventLocationFilterByName(''),
          );
        },
        child: NotificationListener(
          onNotification: (notification) {
            if (notification is ScrollNotification) {
              if (notification.metrics.extentAfter == 0) {
                BlocProvider.of<BlocLocation>(context).add(
                  EventLocationNextPage(),
                );
              }
            }
            return false;
          },
          child: ListView.separated(
            itemBuilder: (context, index) {
              final location = locations[index];
              return LocationCardWidget(location: location);
            },
            separatorBuilder: (_, index) => const SizedBox.shrink(),
            itemCount: locations.length,
          ),
        ),
      );
    }
  }
}
