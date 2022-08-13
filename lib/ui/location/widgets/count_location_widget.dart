import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/locations/bloc_location.dart';
import 'package:simple_code_tz_1/bloc/locations/location_states.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';

class CountLocationWidget extends StatelessWidget {
  const CountLocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<BlocLocation, StateBlocLocation>(
          builder: (context, state) {
            var totalLocation = 0;
            if (state is StateLocationData) {
              totalLocation = state.data.length;
            }
            return Text(
              '${S.of(context).allLocation.toUpperCase()} $totalLocation',
              style: AppStyles.s10w500gray,
            );
          },
        )
      ],
    );
  }
}
