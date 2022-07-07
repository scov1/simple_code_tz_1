import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_code_tz_1/bloc/characters/bloc_character.dart';
import 'package:simple_code_tz_1/bloc/characters/states.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';

class CountCharacter extends StatelessWidget {
  const CountCharacter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<BlocCharacter, StateBlocCharacter>(
            builder: (context, state) {
          var totalCharacter = 0;
          if (state is StateCharacterData) {
            totalCharacter = state.data.length;
          }
          return Text(
            '${S.of(context).allCharacter.toUpperCase()} $totalCharacter',
            style: AppStyles.s10w500gray,
          );
        })
      ],
    );
  }
}
