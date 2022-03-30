import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:turbinagram/utils/strings.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
    User? result = FirebaseAuth.instance.currentUser;
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
                        child: Image.network(i,
                          fit: BoxFit.cover,width: 1080.w,height: 1920.h,),
                      ) );
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
                      });
                    }
                )),
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
                        margin: EdgeInsets.symmetric(vertical: 300.h, horizontal: 50.w),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (Theme.of(context).brightness == Brightness.dark
                                ? Strings.kBlackColor
                                : Strings.kPrimaryColor)
                                .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                )
              ],
            )
          ],
        ),
      );
    }
  }
}
