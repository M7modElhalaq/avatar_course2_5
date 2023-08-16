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
import '../../../../routes/routes.dart';
import '../../../../core/widgets/base_button.dart';
import '../../../../core/widgets/base_button.dart';
import '../../../../core/widgets/navigator_push_replacement.dart';
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
          visible: _isNotFirstPage(),
          child: IconButton(
            onPressed: () {
              _pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.baseButtonElevationZero,
        actions: [
          Container(
            width: ManagerWidth.w100,
            height: ManagerHeights.h40,
            margin: const EdgeInsetsDirectional.only(
              end: ManagerWidth.w12,
            ),
            child: Visibility(
              visible: _isNotLastPage(),
              replacement: BaseButton(
                width: ManagerWidth.w10,
                height: ManagerHeights.h10,
                text: ManagerStrings.start,
                textStyle: TextStyle(
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s16,
                ),
                isVisibleIcon: false,
                bgColor: ManagerColors.transparent,
                elevation: 0,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.authView);
                },
              ),
              child: BaseButton(
                width: ManagerWidth.w10,
                height: ManagerHeights.h10,
                text: ManagerStrings.next,
                textStyle: TextStyle(
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s16,
                ),
                isVisibleIcon: false,
                bgColor: ManagerColors.transparent,
                elevation: Constants.baseButtonElevationZero,
                onPressed: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: Constants.backButtonDuration),
                    curve: Curves.easeIn,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
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
            const SizedBox(
              height: ManagerHeights.h24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                progressIndicator(
                  color: _isFirstPage()
                      ? ManagerColors.grey
                      : ManagerColors.progressIndicatorColor,
                  width: _initialPage == 0 ? ManagerWidth.w20 : ManagerWidth.w8,
                ),
                progressIndicator(
                  color: _isSecondPage()
                      ? ManagerColors.grey
                      : ManagerColors.progressIndicatorColor,
                  width: _initialPage == 1 ? ManagerWidth.w20 : ManagerWidth.w8,
                ),
                progressIndicator(
                  color: _isThirdPage()
                      ? ManagerColors.grey
                      : ManagerColors.progressIndicatorColor,
                  width: _initialPage == 2 ? ManagerWidth.w20 : ManagerWidth.w8,
                ),
                progressIndicator(
                  color: _isLastPage()
                      ? ManagerColors.grey
                      : ManagerColors.progressIndicatorColor,
                  width: _initialPage == 3 ? ManagerWidth.w20 : ManagerWidth.w8,
                ),
              ],
            ),
            const SizedBox(
              height: ManagerHeights.h24,
            ),
            BaseButton(
              text: ManagerStrings.start,
              width: ManagerWidth.w64,
              height: ManagerHeights.h50,
              isVisibleIcon: false,
              textStyle: TextStyle(
                fontWeight: ManagerFontWeight.regular,
                fontSize: ManagerFontSizes.s16,
                color: ManagerColors.white,
              ),
              onPressed: () {
                print('Button Start');
                Navigator.pushReplacementNamed(context, Routes.authView);
              },
            ),
            const SizedBox(
              height: ManagerHeights.h20,
            ),
          ],
        ),
      ),
    );
  }

  bool _isNotFirstPage() {
    return _currentPageIndex != 0;
  }

  bool _isFirstPage() {
    return _currentPageIndex == 0;
  }

  bool _isSecondPage() {
    return _currentPageIndex == 1;
  }

  bool _isThirdPage() {
    return _currentPageIndex == 2;
  }

  bool _isLastPage() {
    return _currentPageIndex == 3;
  }

  bool _isNotLastPage() {
    return _currentPageIndex != 3;
  }
}
