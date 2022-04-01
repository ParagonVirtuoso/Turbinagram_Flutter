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
  static const textSignIn = "ENTRAR NA TECNOTRIKS";
  static const textTudocerto = "ok, tudo certo";
  static const textSignInGoogle = "ENTRAR NA TECNOTRIKS COM O GOOGLE";
  static const textFalha = "Falha";
  static const textMensagemCadastro = "Olá, queremos te conhecer!";
  static const textOk = "Ok";
  static const textNome = "Seu Nome";
  static const textEmail = "E-mail";
  static const textSenha = "Senha";
  static const textOu = "OU";
  static const textOla = "Olá, ";
  static const textHomeServico = "Principais Serviços";
  static const textServico1 = "Desenvolvimento de\nWeb Sites";
  static const textServico2 = "Artes para\nRede Sociais";
  static const textServico3 = "Site de\nVendas";
  static const textServico4 = "Plano\nTurbinagram";

  //navigate
  static const signInNavigate = '/sign-in';
  static const homeNavigate = '/home';
  static const cadastroNavigate = '/cadastro';
  static const turbinagramInicialNavigate = '/turbinagram_inicial';

  static const statusBarColor = SystemUiOverlayStyle(
      statusBarColor: Strings.kPrimaryColor,
      statusBarIconBrightness: Brightness.dark);
}
