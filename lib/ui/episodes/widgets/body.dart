import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/episodes/bloc_episode.dart';
import 'package:simple_code_tz_1/bloc/episodes/episode_events.dart';
import 'package:simple_code_tz_1/data/models/episodes.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/ui/episodes/widgets/episode_card_widget.dart';

class Body extends StatelessWidget {
  final List<Episodes> episodes;
  const Body({Key? key,required this.episodes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(episodes.isEmpty){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,  
        children: [
          Flexible(
            child: Text(  
              S.of(context).episodesListIsEmpty
            )
          ),
        ],
      );
    }else{
      return RefreshIndicator(
        onRefresh: ()async{
          BlocProvider.of<BlocEpisode>(context).add(
            EventEpisodeFetch(),
          );
        },
        child: NotificationListener(  
          onNotification: (notification){
            if(notification is ScrollNotification){
              if(notification.metrics.extentAfter == 0){
                BlocProvider.of<BlocEpisode>(context).add( 
                  EventEpisodeNextPage(),
                );
              }
            }
            return false;
          },
          child: ListView.separated(
            itemBuilder: (context,index)=> EpisodeCardWidget(episode: episodes[index]),
            separatorBuilder: (context,_) => const SizedBox(height:10),
            itemCount: episodes.length
          ),
        )
      );
    }
  }
}