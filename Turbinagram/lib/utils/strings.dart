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
  static const textIntro = "Vou\n";
  static const textIntroDesc1 = "ou  \n ";
  static const textOu = "Ou";
  static const textIntroDesc2 = "Não Vou!";
  static const textSmallSignUp = "Inscrever-se leva menos de 1 minuto!";
  static const textSignIn = "Entrar";
  static const textAvaliar = "Avaliar";
  static const textclassificacao = "Classificações";
  static const textConfiguracoes = "Configurações";
  static const textPerfil = "Perfil";
  static const textSobre = "Sobre Nós";
  static const textSignInGoogle = "Entrar Com o Google";
  static const textAcc = "Não tem uma conta? ";
  static const textSignUp = "Cadastre-se aqui";
  static const textHome = "Home";
  static const textFalha = "Falha";
  static const textOk = "Ok";

  //navigate
  static const signInNavigate = '/sign-in';
  static const homeNavigate = '/home';

  static const statusBarColor = SystemUiOverlayStyle(
      statusBarColor: Strings.kPrimaryColor,
      statusBarIconBrightness: Brightness.dark);
}