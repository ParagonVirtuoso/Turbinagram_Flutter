import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:turbinagram/utils/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<String>? dados = [];

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance
        ?.addPostFrameCallback((_) => _recuperarDadosUsuario());
  }

  Future _recuperarDadosUsuario() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      dados = prefs.getStringList('dados');
    });
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
        backgroundColor: Strings.kPrimaryColor,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 1030.w,
                height: 130.h,
                margin: EdgeInsets.only(top: 100.h),
                padding: EdgeInsets.only(right: 500.w),
                decoration: BoxDecoration(
                    color: Strings.kDarkBlueColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      bottomLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r),
                    )),
                child: Center(
                  child: Text(Strings.textOla + dados![0].toString(),
                      style: TextStyle(
                          color: Strings.kPrimaryColor, fontSize: 45.sp)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100.h, left: 50.w),
              child: Text(Strings.textHomeServico,
                  style:
                      TextStyle(color: Strings.kBlackColor, fontSize: 45.sp)),
            )
          ],
        )));
  }
}
