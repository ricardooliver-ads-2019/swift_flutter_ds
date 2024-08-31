class SFDSStrings {
  static final SFDSStrings _instance = SFDSStrings._internal();

  factory SFDSStrings() {
    return _instance;
  }

  SFDSStrings._internal();

  static const String package = 'swift_flutter_ds';
  static String fontFamily = 'outfit';

  static void setFontFamily({String? font}) {
    if (font != null) fontFamily = font;
  }
}
