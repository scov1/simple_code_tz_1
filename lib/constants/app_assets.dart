abstract class AppAssets{
  static const images = _Images(); 
  static const svg = _Svg();
}

class _Images{
  const _Images();

  final String noAvatar = 'assets/images/bitmap/no_avatar.png';
  final String logo = 'assets/images/bitmap/logo.png';
  final String background = 'assets/images/bitmap/background.png';
  final String characterOne = 'assets/images/bitmap/characterOne.png';
  final String characterTwo = 'assets/images/bitmap/characterTwo.png';


}

class _Svg{
  const _Svg();

  final String account = 'assets/images/svg/account.svg';
  final String password = 'assets/images/svg/password.svg';
  final String characterIcon = 'assets/images/svg/character_icon.svg';
  final String settingsIcon = 'assets/images/svg/settings_icon.svg';

}