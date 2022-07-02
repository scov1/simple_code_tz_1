import 'package:flutter/material.dart';
import 'package:simple_code_tz_1/data/models/character.dart';
import 'package:simple_code_tz_1/data/repository/character_repository.dart';

class CharacterListModel with ChangeNotifier {
  bool isListView = true;
  List<Character> filterCharacter = <Character>[];
  int selectedTab = 0;
  var isLoading = true;
  String? errorMessage;
  final CharacterRepository characterRepository;
  var _characterList = <Character>[];

  CharacterListModel({required this.characterRepository}) {
    _init();
  }

  void _init() {
    characterRepository.getAllCharacters().then((value) {
      errorMessage = value.errorMessage;
      _characterList = value.characterList ?? <Character>[];
      filterCharacter = _characterList;
      isLoading = false;
      notifyListeners();
    });
  }

  void switchView() {
    isListView = !isListView;
    notifyListeners();
  }

  void onSelectedTab(int index) {
    if (selectedTab == index) return;
    selectedTab = index;
    notifyListeners();
  }

  void searchCharacter(String searchText) {
    if (searchText.isNotEmpty) {
      filterCharacter = _characterList.where((character) {
        return character.name!.toLowerCase().contains(searchText.toLowerCase());
      }).toList();
    } else {
      filterCharacter = _characterList;
    }
    notifyListeners();
  }
}
