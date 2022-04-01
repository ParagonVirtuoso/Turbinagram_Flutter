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
    return Container(
      color: Strings.kPrimaryColor,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 80.h,left: 20.w,right: 20.w,bottom: 25.h),
              decoration: BoxDecoration(
                  color: Strings.kTurbinaColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  )),
              child: Image.asset("assets/logo_final-pequeno.png",color: Strings.kPrimaryColor,alignment: Alignment.topCenter,),
            ),
            Container(
              child: Image.asset("assets/logo_final-pequeno.png",color: Strings.kPrimaryColor,alignment: Alignment.topCenter,),
            )
          ],
        ),
      ),
    );
  }
}
