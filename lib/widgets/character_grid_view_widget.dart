import 'package:flutter/material.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/models/character.dart';

class CharacterGridViewWidget extends StatelessWidget {
  final CharacterList characterList;
  const CharacterGridViewWidget({Key? key, required this.characterList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: characterList.characters.length,
        itemBuilder: (BuildContext context, int index) {
          final result = characterList.characters[index];
          return Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: 
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                    result.image,
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Text(
                    result.status.toUpperCase(),
                    style: result.status == 'Живой'
                        ? AppStyles.s10w500green
                        : AppStyles.s10w500red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Text(
                    result.name,
                    style: AppStyles.s16w500main,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      result.type,
                      style: AppStyles.s12w400,
                    ),
                    Text(
                      result.gender,
                      style: AppStyles.s12w400,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
