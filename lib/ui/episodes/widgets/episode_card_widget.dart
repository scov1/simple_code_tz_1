import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/data/models/episodes.dart';
import 'package:simple_code_tz_1/ui/episodes/episode_details_screen.dart';

class EpisodeCardWidget extends StatelessWidget {
  final Episodes episode;
  const EpisodeCardWidget({Key? key, required this.episode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dateCreated =
        DateFormat('EEEE,dd MMMM,yyyy').format(episode.created!);
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Card(
        elevation: 16,
        shadowColor: Colors.black54,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                Colors.grey.shade600,
                AppColors.darkPrimary,
                AppColors.primary
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    episode.episode!,
                    style: AppStyles.s14w500background,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    episode.name!,
                    style: AppStyles.s16w500,
                  ),
                ],
              ),
            ),
            subtitle: Text(
              dateCreated,
              style: AppStyles.s14w500light,
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EpisodeDetailsScreen(episode: episode),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
