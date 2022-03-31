import 'package:flutter/material.dart';
import 'package:turbinagram/utils/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  String _mensagemErro = "";

  _validarCampos() async {
    //Recupera dados dos campos
    String nome = _controllerNome.text;
    String email = _controllerEmail.text;

    if(nome.isNotEmpty){
      if(email.isNotEmpty && email.contains("@")){
        setState(() {
          _mensagemErro = "";
        });

        final prefs = await SharedPreferences.getInstance();
        await prefs.setStringList('dados', <String>[nome, email,]);
        Navigator.pushNamedAndRemoveUntil(
            context, Strings.homeNavigate, (route) => false);


      }else{
        setState(() {
          _mensagemErro = "Preencha o Email corretamente";
        });
      }

    }else{
      setState(() {
        _mensagemErro = "Preencha o Nome";
      });

    }

  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: const Size(1080, 1920),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Strings.kDarkBlueColor,
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 450.h),
              child: Text(Strings.textMensagemCadastro,
                style: TextStyle(
                  color: Strings.kPrimaryColor,
                  fontWeight: FontWeight.normal,
                  fontSize: 50.sp,
                ),
              )),

          Container(
            width: 1000.w,
            margin: EdgeInsets.only(top: 50.h),
            child: TextField(
              controller: _controllerNome,
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 40.h, horizontal: 50.w),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(35.r),
                  )
                ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Strings.kPrimaryColor, width: 5.sp),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.r),
                      )
                  ),
                hintText: Strings.textNome,
                hintStyle: const TextStyle(
                  color: Strings.kPrimaryColor
                )
              ),
            ),
          ),
          Container(
            width: 1000.w,
            margin: EdgeInsets.only(top: 50.h),
            child: TextField(
              controller: _controllerEmail,
              decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 40.h, horizontal: 50.w),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.r),
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Strings.kPrimaryColor, width: 5.sp),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.r),
                      )
                  ),
                  hintText: Strings.textEmail,
                  hintStyle: const TextStyle(
                      color: Strings.kPrimaryColor
                  )
              ),
            ),
          ),
          Container(
              width: 500.w,
              margin: EdgeInsets.only(top: 50.h),
              child: OutlinedButton(
                onPressed: () {
                  _validarCampos();
                },
                child: Text(
                  Strings.textTudocerto,
                  style: TextStyle(
                      color: Strings.kDarkBlueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.sp),
                ),
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Strings.kGreyColor),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide.none)),
              )
          ),

          Center(
            child: Container(
              width: 300.w,
              margin: EdgeInsets.only(top: 740.h),
              child: Image.asset("assets/logo_final-min.png",color: Strings.kPrimaryColor),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.h,bottom: 10.h),
            child: Text(
              _mensagemErro,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 45.sp
              ),
            ),
          )

        ],
      ),
    );
  }


}


