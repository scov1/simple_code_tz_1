import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/data/models/episodes.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';

class EpisodeDetailsScreen extends StatelessWidget {
  final Episodes episode;
  const EpisodeDetailsScreen({Key? key, required this.episode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dateCreated =
        DateFormat('EEEE,dd MMMM,yyyy').format(episode.created!);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              episode.episode!,
              style: AppStyles.s25w500main,
            ),
            const SizedBox(height: 15),
            Text(
              episode.name!,
              style: AppStyles.s20w500desc,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 15),
            Text(
              '${S.of(context).aired}: $dateCreated',
              style: AppStyles.s16w500main,
            ),
          ],
        ),
      ),
    );
  }
}
