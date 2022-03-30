import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Strings {
  //colors
  static const kPrimaryColor = Color(0xFFFFFFFF);
  static const kGreyColor = Color(0xFFEEEEEE);
  static const kBlackColor = Color(0xFF000000);
  static const kDarkGreyColor = Color(0xFF9E9E9E);
  static const kDarkBlueColor = Color(0xFF6057FF);
  static const kBorderColor = Color(0xFFEFEFEF);

  //text
  static const title = "Continuar Com o Google";
  static const textEntrarSlogan1 = "Tornando suas";
  static const textEntrarSlogan2 = "ideias em realidade";
  static const textSignInGoogle = "ENTRAR NA TECNOTRIKS COM O GOOGLE";
  static const textFalha = "Falha";
  static const textOk = "Ok";

  //navigate
  static const signInNavigate = '/sign-in';
  static const homeNavigate = '/home';

  static const statusBarColor = SystemUiOverlayStyle(
      statusBarColor: Strings.kPrimaryColor,
      statusBarIconBrightness: Brightness.dark);
}
