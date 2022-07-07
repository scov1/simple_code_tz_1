import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/characters/bloc_character.dart';
import 'package:simple_code_tz_1/bloc/characters/events.dart';
import 'package:simple_code_tz_1/bloc/characters/states.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/ui/character_list/widgets/character_list_widget.dart';
import 'package:simple_code_tz_1/ui/character_list/widgets/count_character_row_widget.dart';
import 'package:simple_code_tz_1/widgets/bottom_nav_bar_widget.dart';
import 'widgets/character_grid_view_widget.dart';
import 'widgets/search_character_widget.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  static final isListView = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocCharacter, StateBlocCharacter>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              SearchCharacter(
                onChanged: (value) {
                  BlocProvider.of<BlocCharacter>(context).add(
                    EventCharacterFilterByName(
                      value.toLowerCase(),
                    ),
                  );
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16,right:16,top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CountCharacter(),
                    InkWell(
                      onTap: () {
                        isListView.value = !isListView.value;
                      },
                      child: ValueListenableBuilder<bool>(
                        valueListenable: isListView,
                        builder: (context, isListViewMode, _) {
                          return isListViewMode
                              ? const Icon(Icons.list)
                              : const Icon(Icons.grid_view);
                        },
                      ),
                    )
                  ],
                ),
              ),
              state is StateCharacterLoading
                  ? Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          CircularProgressIndicator(),
                        ],
                      ),
                    )
                  : state is StateCharacterError
                      ? Padding(
                        padding: const EdgeInsets.only(top:24.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(state.error),
                              )
                            ],
                          ),
                      )
                      : state is StateCharacterData
                          ? state.data.isEmpty
                              ? Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(S.of(context).characterListIsEmpty)
                                    ],
                                  ),
                                )
                              : ValueListenableBuilder<bool>(
                                  valueListenable: isListView,
                                  builder: (context, isListViewMode, _) {
                                    return isListViewMode
                                        ? CharacterListWidget(
                                            characters: state.data,
                                          )
                                        : CharacterGridViewWidget(
                                            characters: state.data,
                                          );
                                  })
                          : const SizedBox.shrink()
            ],
          ),
          bottomNavigationBar: const BottomNavBar(selectedTab: 0),
        );
      },
    );
  }
}
