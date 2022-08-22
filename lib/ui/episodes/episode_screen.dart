import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/episodes/bloc_episode.dart';
import 'package:simple_code_tz_1/bloc/episodes/episode_states.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/ui/episodes/widgets/body.dart';
import 'package:simple_code_tz_1/widgets/modal_error_widget.dart';
import 'package:simple_code_tz_1/widgets/bottom_nav_bar_widget.dart';

class EpisodeScreen extends StatelessWidget {
  const EpisodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).episodes),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: BlocBuilder<BlocEpisode, StateBlocEpisode>(
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
                        loading: (_) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        data: (state) => Body(episodes: state.data),
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
                )
              ],
            ),
          ),
          BlocConsumer<BlocEpisode, StateBlocEpisode>(
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
            builder: (context, state) {
              final isLoading = state.maybeMap(
                  data: (state) => state.isLoading, orElse: () => false);
              return Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: isLoading
                    ? const LinearProgressIndicator()
                    : const SizedBox.shrink(),
              );
            },
          )
        ],
      ),
      bottomNavigationBar: const BottomNavBar(selectedTab: 2),
    );
  }
}
