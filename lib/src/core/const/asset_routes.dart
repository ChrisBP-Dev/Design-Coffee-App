class AssetRoutes {
  static const profile = 'assets/profile_image.jpeg';
  static const photo1 = 'assets/photo_1.jpg';
  static const photo2 = 'assets/photo_2.jpg';
  static const photo3 = 'assets/photo_3.jpg';
  static const photo4 = 'assets/photo_4.jpg';
  static const photo5 = 'assets/photo_5.jpg';

  static String onboarding(int index) => 'assets/photo_${index + 1}.jpg';
}
