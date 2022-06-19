import 'package:simple_code_tz_1/constants/app_assets.dart';

class Character {
  String name;
  String status;
  String image;
  String type;
  String gender;

  Character({required this.name, required this.status,required this.image,required this.type,required this.gender});
}

class CharacterList{
  final _listCharacter = [
    Character(name: 'Рик Санчез',status: 'Живой',image: AppAssets.images.noAvatar,type: 'Человек,',gender: 'Мужской'),
    Character(name: 'Алан Райс',status: 'Мертвый',image: AppAssets.images.noAvatar,type: 'Человек,',gender: 'Мужской'),
    Character(name: 'Саммер Смит',status: 'Живой',image: AppAssets.images.noAvatar,type: 'Человек,',gender: 'Женский'),
    Character(name: 'Морти Смит',status: 'Живой',image: AppAssets.images.noAvatar,type: 'Человек,',gender: 'Мужской'),
    Character(name: 'Рик Санчез',status: 'Живой',image: AppAssets.images.noAvatar,type: 'Человек,',gender: 'Мужской'),
    Character(name: 'Алан Райс',status: 'Мертвый',image: AppAssets.images.noAvatar,type: 'Человек,',gender: 'Мужской'),
    Character(name: 'Саммер Смит',status: 'Живой',image: AppAssets.images.noAvatar,type: 'Человек,',gender: 'Женский'),
    Character(name: 'Морти Смит',status: 'Живой',image: AppAssets.images.noAvatar,type: 'Человек,',gender: 'Мужской'),
    Character(name: 'Рик Санчез',status: 'Живой',image: AppAssets.images.noAvatar,type: 'Человек,',gender: 'Мужской'),
    Character(name: 'Рик Санчез',status: 'Живой',image: AppAssets.images.noAvatar,type: 'Человек,',gender: 'Мужской'),
  ];

  List<Character> get characters => [..._listCharacter];
}

