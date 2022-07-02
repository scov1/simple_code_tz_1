import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_code_tz_1/data/repository/character_repository.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/ui/character_list/widgets/character_list_model.dart';
import 'package:simple_code_tz_1/ui/character_list/widgets/character_list_widget.dart';
import 'package:simple_code_tz_1/ui/character_list/widgets/count_character_row_widget.dart';
import 'package:simple_code_tz_1/ui/settings_screen.dart';
import 'package:simple_code_tz_1/widgets/bottom_nav_bar_widget.dart';
import 'widgets/character_grid_view_widget.dart';
import 'widgets/search_character_widget.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CharacterListModel(
        characterRepository:
            Provider.of<CharacterRepository>(context, listen: false),
      ),
      child: Consumer<CharacterListModel>(
        builder: (context, vmodel, _) {
          return Scaffold(
            body: IndexedStack(
              index: vmodel.selectedTab,
              children: [
                Column(
                  children: [
                    SearchCharacter(
                      onChanged: (value) {
                        Provider.of<CharacterListModel>(context, listen: false)
                            .searchCharacter(
                          value.toLowerCase(),
                        );
                      },
                    ),
                    const CountCharacter(),
                    vmodel.isLoading
                        ? Expanded(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                CircularProgressIndicator(),
                              ],
                            ),
                        )
                        : vmodel.errorMessage != null
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(vmodel.errorMessage!),
                                  )
                                ],
                              )
                            : vmodel.filterCharacter.isEmpty
                                ? Expanded(
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            S.of(context).characterListIsEmpty)
                                      ],
                                    ),
                                )
                                : vmodel.isListView
                                    ? CharacterListWidget(
                                        characters: vmodel.filterCharacter,
                                      )
                                    : CharacterGridViewWidget(
                                        characters: vmodel.filterCharacter,
                                      ),
                  ],
                ),
                const SettingsScreen()
              ],
            ),
            bottomNavigationBar: BottomNavBar(
              selectedTab: vmodel.selectedTab,
              onSelectedTab: vmodel.onSelectedTab,
            ),
          );
        },
      ),
    );
  }
}
