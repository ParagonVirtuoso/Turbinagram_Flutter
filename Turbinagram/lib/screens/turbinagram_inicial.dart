import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turbinagram/utils/strings.dart';

class TurbinagramInicial extends StatefulWidget {
  const TurbinagramInicial({Key? key}) : super(key: key);

  @override
  State<TurbinagramInicial> createState() => _TurbinagramInicialState();
}

class _TurbinagramInicialState extends State<TurbinagramInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: 80.h, left: 20.w, right: 20.w, bottom: 25.h),
              decoration: BoxDecoration(
                  color: Strings.kTurbinaColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  )),
              child: Image.asset(
                "assets/logo_final-pequeno.png",
                color: Strings.kPrimaryColor,
                alignment: Alignment.topCenter,
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              height: 500.h,
              margin: EdgeInsets.only(top: 200.h),
              child: Image.asset(
                "assets/logo_texto.png",
                alignment: Alignment.topCenter,
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
                width: 650.w,
                margin: EdgeInsets.only(top: 80.h),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    Strings.textConheca,
                    style: TextStyle(
                        color: Strings.kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.sp),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Strings.kPrimaryColor),
                    side:
                    MaterialStateProperty.all(
                        BorderSide.lerp(
                            const BorderSide(
                              style: BorderStyle.solid,
                              color: Strings.kTurbinaColor,
                              width: 10.9,
                            ),
                            const BorderSide(
                              style: BorderStyle.solid,
                              color: Strings.kTurbinaColor,
                              width: 10.0,
                            ),
                            10.0)
                    ),
                    overlayColor:
                    MaterialStateProperty.all<Color>(Strings.kTurbinaColor),
                  ),
                )),
            Container(
              child: Container(
                  width: 650.w,
                  child: OutlinedButton(
                    onPressed: () {

                    },
                    child: Text(
                      Strings.textJaConhece,
                      style: TextStyle(
                          color: Strings.kPDarkGreyColor,
                          fontSize: 40.sp),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                      side: MaterialStateProperty.all<BorderSide>(BorderSide.none),
                      overlayColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),),
                  )
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 450.h),
              child: Text(
                Strings.textDireitosR,
                style: TextStyle(
                    color: Strings.kPDarkGreyColor,
                    fontSize: 27.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
