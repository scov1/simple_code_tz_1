import 'package:flutter/material.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/data/models/location.dart';
import 'package:simple_code_tz_1/ui/locations/location_details_screen.dart';

class LocationCardWidget extends StatelessWidget {
  final Location location;
  const LocationCardWidget({Key? key, required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: Colors.black.withOpacity(0.10),
        ),
      ),
      elevation: 16,
      shadowColor: Colors.black54,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                location.type!,
                style: AppStyles.s14w500green,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              Text(
                location.name!,
                style: AppStyles.s16w500main,
              ),
            ],
          ),
        ),
        subtitle: Text(
          location.dimension!,
          style: AppStyles.s12w400,
        ),
        trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LocationDetailsScreen(location: location),
          ),
        );
        },
      ),
    );
  }
}
