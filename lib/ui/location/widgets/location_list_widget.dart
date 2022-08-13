import 'package:flutter/material.dart';
import 'package:simple_code_tz_1/data/models/location.dart';
import 'package:simple_code_tz_1/ui/location/widgets/location_card_widget.dart';

class LocationListWidget extends StatelessWidget {
  final List<Location> locations;
  const LocationListWidget({Key? key,required this.locations}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context,index){
          final location = locations[index];
          return LocationCardWidget(location: location);
        },
        separatorBuilder: (_,index) => const SizedBox.shrink(),
        itemCount: locations.length,
      ),
    );
  }
}
