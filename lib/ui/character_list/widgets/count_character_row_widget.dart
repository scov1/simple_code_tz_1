import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/ui/character_list/widgets/character_list_model.dart';

class CountCharacter extends StatelessWidget {
  const CountCharacter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final characterTotal =
        context.watch<CharacterListModel>().filterCharacter.length;
    final model = context.watch<CharacterListModel>();
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 16, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${S.of(context).allCharacter.toUpperCase()} $characterTotal',
            style: AppStyles.s10w500gray,
          ),
          InkWell(
            onTap: () {
              model.switchView();
            },
            child: model.isListView
                ? const Icon(Icons.list)
                : const Icon(Icons.grid_view),
          )
        ],
      ),
    );
  }
}
