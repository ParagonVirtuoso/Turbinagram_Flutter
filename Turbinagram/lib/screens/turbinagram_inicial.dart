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
    return Column(
      children: [
        Center(
          child: Container(
            width: 100.w,
            padding: EdgeInsets.only(bottom: 1300.h),
            child: Image.asset("assets/logo_final-pequeno.png",color: Strings.kDarkGreyColor.withOpacity(0.5)),
          ),
        )
      ],
    );
  }
}
