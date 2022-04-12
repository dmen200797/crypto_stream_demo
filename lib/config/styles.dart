import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static TextStyle get fontSize34 {
    return GoogleFonts.rubik(
      fontSize: 34.sp,
    );
  }

  static TextStyle get fontSize16 {
    return GoogleFonts.rubik(
      fontSize: 16.sp,
    );
  }

  static TextStyle get fontSize14 {
    return GoogleFonts.rubik(
      fontSize: 14.sp,
    );
  }

  static TextStyle get fontSize12 {
    return GoogleFonts.rubik(
      fontSize: 12.sp,
    );
  }

  static TextStyle get fontSize20 {
    return GoogleFonts.rubik(
      fontSize: 20.sp,
    );
  }
}

extension ExtensionTextStyle on TextStyle {
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
}
