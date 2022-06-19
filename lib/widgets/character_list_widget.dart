import 'package:flutter/material.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/models/character.dart';

class CharacterListWidget extends StatelessWidget {
  final CharacterList listCharacter;
  const CharacterListWidget({Key? key, required this.listCharacter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            final result = listCharacter.characters[index];
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 8,
                child: Row(children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      result.image,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          result.status.toUpperCase(),
                          style: result.status == 'Живой'
                              ? AppStyles.s10w500green
                              : AppStyles.s10w500red,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            result.name,
                            style: AppStyles.s16w500main,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
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
                        )
                      ],
                    ),
                  )
                ]),
              ),
            );
          },
          separatorBuilder: (_, index) => const SizedBox.shrink(),
          itemCount: listCharacter.characters.length),
    );
  }
}
