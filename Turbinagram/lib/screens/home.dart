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
                decoration: BoxDecoration(
                    color: Strings.kDarkBlueColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      bottomLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r),
                    )),
                child: Container(
                  margin: EdgeInsets.only(left: 30.w),
                  child: Row(
                    children: [
                      Text(Strings.textOla,
                          style: TextStyle(
                              color: Strings.kPrimaryColor, fontSize: 45.sp)),
                      Text(dados![0].toString().toUpperCase(),
                          style: TextStyle(
                            color: Strings.kPrimaryColor,
                            fontSize: 46.sp,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100.h, left: 50.w),
              child: Text(Strings.textHomeServico,
                  style:
                      TextStyle(color: Strings.kBlackColor, fontSize: 40.sp)),
            ),
            Center(
              child: Container(
                width: 1030.w,
                height: 350.h,
                margin: EdgeInsets.only(top: 20.h),
                decoration: BoxDecoration(
                    color: Strings.kDarkBlueColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      bottomLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                      bottomRight: Radius.circular(30.r),
                    )),
                child: OutlinedButton(
                  onPressed: () {},

                  style: OutlinedButton.styleFrom(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 30.h,left: 30.w),
                  ),
                  child: Text(Strings.textServico1,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Strings.kPrimaryColor, fontSize: 45.sp)),
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 500.w,
                      height: 350.h,
                      margin: EdgeInsets.only(top: 20.h, left: 35.w),
                      decoration: BoxDecoration(
                          color: Strings.kDarkBlueColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            bottomLeft: Radius.circular(30.r),
                            topRight: Radius.circular(30.r),
                            bottomRight: Radius.circular(30.r),
                          )),
                      child: OutlinedButton(
                        onPressed: () {},

                        style: OutlinedButton.styleFrom(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 30.h,left: 30.w),
                        ),
                        child: Text(Strings.textServico2,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Strings.kPrimaryColor, fontSize: 45.sp)),
                      ),
                    ),
                    Container(
                      width: 500.w,
                      height: 350.h,
                      margin: EdgeInsets.only(top: 20.h, left: 35.w),
                      decoration: BoxDecoration(
                          color: Strings.kDarkBlueColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            bottomLeft: Radius.circular(30.r),
                            topRight: Radius.circular(30.r),
                            bottomRight: Radius.circular(30.r),
                          )),
                      child: OutlinedButton(
                        onPressed: () {},

                        style: OutlinedButton.styleFrom(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 30.h,left: 30.w),
                        ),
                        child: Text(Strings.textServico3,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Strings.kPrimaryColor, fontSize: 45.sp)),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 500.w,
                  height: 720.h,
                  margin: EdgeInsets.only(top: 20.h, left: 15.w, right: 30.w),
                  decoration: BoxDecoration(
                      color: Strings.kDarkBlueColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        bottomLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r),
                      )),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, Strings.turbinagramInicialNavigate);
                    },

                    style: OutlinedButton.styleFrom(
                        alignment: Alignment.topRight,
                      padding: EdgeInsets.only(top: 30.h,right: 30.w),
                    ),
                    child: Text(Strings.textServico4,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Strings.kPrimaryColor, fontSize: 45.sp)),
                  ),
                )
              ],
            )
          ],
        )));
  }
}
