import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:turbinagram/utils/strings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Entrar extends StatefulWidget {
  const Entrar({Key? key}) : super(key: key);

  @override
  State<Entrar> createState() => _EntrarState();
}

class _EntrarState extends State<Entrar> {
  bool carrega = true;

  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();

  late double _alturaTexto = 400.h;

  late Color _corTexto = Strings.kPrimaryColor;

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance
        ?.addPostFrameCallback((_) => _recuperarDadosUsuario());
  }

  Future _recuperarDadosUsuario() async {
    User? result = FirebaseAuth.instance.currentUser;
    if (result != null) {
      Navigator.pushReplacementNamed(context, Strings.homeNavigate);
    } else {
      setState(() {
        carrega = false;
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
    if (carrega == true) {
      return Scaffold(
        body: Align(
          child: Container(
              color: Colors.transparent,
              width: 250.w,
              height: 200.h,
              child: const Center(
                  child: CircularProgressIndicator(
                color: Strings.kDarkBlueColor,
              ))),
          alignment: FractionalOffset.center,
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Strings.kPrimaryColor,
        body: Stack(
          children: [
            CarouselSlider(
                carouselController: _controller,
                items: images.map<Widget>((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return SizedBox(
                          height: 1920.h,
                          width: 1080.w,
                          child: InkResponse(
                            child: Image.network(
                              i,
                              fit: BoxFit.cover,
                              width: 1080.w,
                              height: 1920.h,
                            ),
                          ));
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                    height: 1920.h,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                        if (index == 0) {
                          _alturaTexto = 400.h;
                          _corTexto = Strings.kPrimaryColor;
                        }
                        if (index == 1) {
                          _alturaTexto = 800.h;
                          _corTexto = Strings.kDarkBlueColor;
                        }
                        if (index == 2) {
                          _alturaTexto = 1300.h;
                          _corTexto = Strings.kPrimaryColor;
                        }
                      });
                    })),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: images.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 20.w,
                        height: 20.h,
                        margin: EdgeInsets.symmetric(
                            vertical: 300.h, horizontal: 50.w),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Strings.kBlackColor
                                        : Strings.kPrimaryColor)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
            Center(
              child: Container(
                width: 900.w,
                padding: EdgeInsets.only(top: 1500.h),
                child: OutlinedButton.icon(
                  icon: const FaIcon(FontAwesomeIcons.instagram,color: Strings.kDarkGreyColor),
                  onPressed: ()  {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Strings.cadastroNavigate, (route) => false);
                  },
                  label: Text(
                    Strings.textSignIn,
                    style: TextStyle(
                        color: Strings.kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.sp),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Strings.kGreyColor),
                      side: MaterialStateProperty.all<BorderSide>(BorderSide.none)),
                )
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 110.w, bottom: _alturaTexto),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Strings.textEntrarSlogan1,
                      style: TextStyle(
                        color: _corTexto,
                        fontWeight: FontWeight.normal,
                        fontSize: 90.sp,
                      )),
                  Text(Strings.textEntrarSlogan2,
                      style: TextStyle(
                        color: _corTexto,
                        fontWeight: FontWeight.bold,
                        fontSize: 90.sp,
                      ))
                ],
              ),
            ),
            Center(
              child: Container(
                width: 100.w,
                padding: EdgeInsets.only(bottom: 1300.h),
                child: Image.asset("assets/logo_final-pequeno.png",color: Strings.kDarkGreyColor.withOpacity(0.5)),
              ),
            )
          ],
        ),
      );
    }
  }
}
