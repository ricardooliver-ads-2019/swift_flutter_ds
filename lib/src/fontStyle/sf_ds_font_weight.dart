import 'package:flutter/material.dart';

enum SFDSFontWeight {
  strong(FontWeight.w900),
  semiStrong(FontWeight.w700),
  neutral(FontWeight.w500),
  defaults(FontWeight.w400),
  thin(FontWeight.w300),
  ;

  final FontWeight value;

  const SFDSFontWeight(this.value);
}
