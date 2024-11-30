class RBannerModel {
  final String image;
  final String title;
  final String subtitle;
  final String colorText;
  RBannerModel(
      {required this.image,
      required this.title,
      required this.subtitle,
      this.colorText = ""});
}
