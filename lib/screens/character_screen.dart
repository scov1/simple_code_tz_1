import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/models/character.dart';
import 'package:simple_code_tz_1/widgets/character_grid_view.dart';
import 'package:simple_code_tz_1/widgets/character_list_widget.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  CharacterList characterList = CharacterList();
  bool _isListView = true;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Column(
          children: [
            _searchCharacter(),
            _countCharacterRow(),
            _isListView
                ? CharacterListWidget(listCharacter: characterList)
                : CharacterGridViewWidget(characterList: characterList)
          ],
        ),
      ),
    );
  }

  Widget _searchCharacter() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          prefixIcon: const Icon(Icons.search),
          hintText: S.of(context).findCharacter,
          hintStyle: AppStyles.s16w400gray,
          filled: true,
          fillColor: AppColors.textFieldBack,
          suffixIcon: const Icon(Icons.filter_list_alt),
        ),
      ),
    );
  }

  Widget _countCharacterRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 16, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${S.of(context).allCharacter.toUpperCase()} ${characterList.characters.length}',
            style: AppStyles.s10w500gray,
          ),
          InkWell(
            onTap: () {
              setState(() {
                _isListView = !_isListView;
              });
            },
            child: _isListView
                ? const Icon(Icons.list)
                : const Icon(Icons.grid_view),
          )
        ],
      ),
    );
  }
}
