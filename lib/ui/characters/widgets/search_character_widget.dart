import 'package:flutter/material.dart';
import 'package:simple_code_tz_1/constants/app_colors.dart';
import 'package:simple_code_tz_1/constants/app_styles.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';

class SearchCharacter extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const SearchCharacter({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 70),
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
        onChanged: onChanged,
      ),
    );
  }
}
