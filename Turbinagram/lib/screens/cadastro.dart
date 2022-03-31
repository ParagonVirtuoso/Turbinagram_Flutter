import 'package:flutter/material.dart';
import 'package:turbinagram/utils/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turbinagram/widgets/googlesignin.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: const Size(1080, 1920),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);
    return Scaffold(
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
                onPressed: ()  {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Strings.cadastroNavigate, (route) => false);
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
          Padding(padding: EdgeInsets.only(bottom: 30.h)),
          buildRowDivider(size: size),
          Padding(padding: EdgeInsets.only(bottom: 30.h)),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 40.h),
              child: const GoogleSignIn(),
            ),
          ),
          Center(
            child: Container(
              width: 300.w,
              margin: EdgeInsets.only(top: 460.h),
              child: Image.asset("assets/logo_final-min.png",color: Strings.kPrimaryColor),
            ),
          )

        ],
      ),
    );
  }

  Widget buildRowDivider({required Size size}) {
    return Container(
      width: 870.w,
      margin: EdgeInsets.only(top: 50.w),
      child: Row(children: <Widget>[
        const Expanded(child: Divider(color: Strings.kPrimaryColor)),
        Padding(
            padding: EdgeInsets.only(left: 45.w, right: 45.w),
            child:  Text(
              Strings.textOu,
              style: TextStyle(color: Strings.kPrimaryColor),
            )),
        const Expanded(child: Divider(color: Strings.kPrimaryColor)),
      ]),
    );
  }
}


