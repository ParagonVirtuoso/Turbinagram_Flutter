import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Strings {
  //colors
  static const kPrimaryColor = Color(0xFFFFFFFF);
  static const kGreyColor = Color(0xFFEEEEEE);
  static const kBlackColor = Color(0xFF000000);
  static const kDarkGreyColor = Color(0xFF9E9E9E);
  static const kPDarkGreyColor = Color(0xFF878787);
  static const kDarkBlueColor = Color(0xFF0473ff);
  static const kBorderColor = Color(0xFFEFEFEF);
  static const kTurbinaColor = Color(0xFFEb2b5c);

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
  static const textConheca = "Conheça nosso plano!";
  static const textJaConhece = "Já conhece o plano? faça login";
  static const textDireitosR = "Todos os direitos foram reservados";

  //navigate
  static const signInNavigate = '/sign-in';
  static const homeNavigate = '/home';
  static const cadastroNavigate = '/cadastro';
  static const turbinagramInicialNavigate = '/turbinagram_inicial';

  static const statusBarColor = SystemUiOverlayStyle(
      statusBarColor: Strings.kPrimaryColor,
      statusBarIconBrightness: Brightness.dark);
}
