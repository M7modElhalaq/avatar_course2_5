import 'package:avatar_course2_5/core/resources/manager_assets.dart';
import 'package:avatar_course2_5/core/resources/manager_colors.dart';
import 'package:avatar_course2_5/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_5/core/resources/manager_font_weight.dart';
import 'package:avatar_course2_5/core/resources/manager_height.dart';
import 'package:avatar_course2_5/core/resources/manager_radius.dart';
import 'package:avatar_course2_5/core/resources/manager_strings.dart';
import 'package:avatar_course2_5/core/resources/manager_width.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/widgets/base_button.dart';
import '../widgets/out_boarding_widget.dart';
import '../widgets/progress_indicator.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  int _initialPage = 0;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _initialPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Visibility(
          visible: _currentPageIndex != 0,
          child: IconButton(
            onPressed: () {
              _pageController.previousPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.appBarElevation,
        actions: [
          Container(
            width: ManagerWidth.w100,
            height: ManagerHeights.h40,
            margin: EdgeInsetsDirectional.only(
              end: ManagerWidth.w12,
            ),
            child: Visibility(
              visible: _currentPageIndex != 3,
              child: BaseButton(
                width: ManagerWidth.w10,
                height: ManagerHeights.h10,
                title: 'Next',
                textStyle: TextStyle(
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s16,
                ),
                isVisibleIcon: false,
                bgColor: ManagerColors.transparent,
                elevation: 0,
                onPressed: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: ManagerWidth.w30,
          vertical: ManagerHeights.h24,
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    _currentPageIndex = value;
                    _initialPage = value;
                  });
                  print(_initialPage);
                  duration:
                  const Duration(
                    milliseconds: 300,
                  );
                },
                children: [
                  OutBoardingWidget(
                    image: ManagerAssets.out_boarding_screen1,
                    title: ManagerStrings.outBoardingTitle1,
                    subTitle: ManagerStrings.outBoardingSubTitle1,
                  ),
                  OutBoardingWidget(
                    image: ManagerAssets.out_boarding_screen2,
                    title: ManagerStrings.outBoardingTitle2,
                    subTitle: ManagerStrings.outBoardingSubTitle2,
                  ),
                  OutBoardingWidget(
                    image: ManagerAssets.out_boarding_screen3,
                    title: ManagerStrings.outBoardingTitle3,
                    subTitle: ManagerStrings.outBoardingSubTitle3,
                  ),
                  OutBoardingWidget(
                    image: ManagerAssets.out_boarding_screen4,
                    title: ManagerStrings.outBoardingTitle4,
                    subTitle: ManagerStrings.outBoardingSubTitle4,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ManagerHeights.h24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                progressIndicator(
                  color: _initialPage == 0
                      ? ManagerColors.black
                      : ManagerColors.progressIndicatorColor,
                  width: _initialPage == 0
                      ? ManagerWidth.w20
                      : ManagerWidth.w8,
                ),
                progressIndicator(
                  color: _initialPage == 1
                      ? ManagerColors.black
                      : ManagerColors.progressIndicatorColor,
                  width: _initialPage == 1
                      ? ManagerWidth.w20
                      : ManagerWidth.w8,
                ),
                progressIndicator(
                  color: _initialPage == 2
                      ? ManagerColors.black
                      : ManagerColors.progressIndicatorColor,
                  width: _initialPage == 2
                      ? ManagerWidth.w20
                      : ManagerWidth.w8,
                ),
                progressIndicator(
                  color: _initialPage == 3
                      ? ManagerColors.black
                      : ManagerColors.progressIndicatorColor,
                  width: _initialPage == 3
                      ? ManagerWidth.w20
                      : ManagerWidth.w8,
                ),
              ],
            ),
            SizedBox(
              height: ManagerHeights.h24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: ManagerWidth.w40,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ManagerColors.primaryColor,
                    minimumSize: Size(ManagerWidth.w64, ManagerHeights.h50)),
                child: Row(
                  children: [
                    Spacer(
                      flex: 5,
                    ),
                    Text(
                      ManagerStrings.start,
                      style: TextStyle(
                        fontWeight: ManagerFontWeight.regular,
                        fontSize: ManagerFontSizes.s16,
                        color: ManagerColors.white,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: ManagerColors.white,
                    ),
                    Spacer(
                      flex: 4,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ManagerHeights.h20,
            ),
          ],
        ),
      ),
    );
  }
}
