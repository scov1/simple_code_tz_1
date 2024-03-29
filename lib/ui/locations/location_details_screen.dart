import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/data/models/location.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';

class LocationDetailsScreen extends StatelessWidget {
  final Location location;
  const LocationDetailsScreen({Key? key, required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dateCreated =
        DateFormat('EEEE,dd MMMM,yyyy').format(location.created!);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  location.name!,
                  style: AppStyles.s25w500main,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  '${location.type!} ',
                  style: AppStyles.s20w500desc,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Flexible(
                child: Icon(
                  Icons.fiber_manual_record_sharp,
                  size: 10,
                  color: AppColors.descText,
                ),
              ),
              Flexible(
                child: Text(
                  ' ${location.dimension!}',
                  style: AppStyles.s20w500desc,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  '${S.of(context).aired}: $dateCreated',
                  style: AppStyles.s16w500main,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
