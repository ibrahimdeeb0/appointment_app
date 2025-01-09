class ProfileListTileModel<T> {
  final String title;
  final String iconPath;
  final T type;

  const ProfileListTileModel({
    required this.title,
    required this.iconPath,
    required this.type,
  });
}
