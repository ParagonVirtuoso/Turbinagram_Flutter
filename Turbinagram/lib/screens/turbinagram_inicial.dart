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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 50.h),
              color: Strings.kTurbinaColor,
              child: Image.asset("assets/logo_final-pequeno.png",color: Strings.kPrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}
