import 'package:avatar_course2_5/core/resources/manager_colors.dart';
import 'package:avatar_course2_5/features/out_boarding/presentation/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';

class OutBoardingWidget extends StatefulWidget {
  String? image;
  String? title;
  String? subTitle;
  OutBoardingWidget({Key? key, this.image, this.title, this.subTitle}) : super(key: key);

  @override
  State<OutBoardingWidget> createState() => _OutBoardingWidgetState();
}

class _OutBoardingWidgetState extends State<OutBoardingWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ManagerHeights.h500,
      child: Column(
        children: [
          Image.asset(
            widget.image ?? ManagerAssets.out_boarding_screen1,
            height: ManagerHeights.h220,
          ),
          const Spacer(flex: 4,),
          Text(
            widget.title ?? ManagerStrings.outBoardingTitle1,
            style: TextStyle(
              fontSize: ManagerFontSizes.s26,
              fontWeight: ManagerFontWeight.bold,
              color: ManagerColors.onBoardingTitleColor,
            ),
          ),
          const Spacer(flex: 2,),
          Container(
            height: ManagerHeights.h80,
            child: Text(
              widget.subTitle ?? ManagerStrings.outBoardingSubTitle1,
              style: TextStyle(
                fontSize: ManagerFontSizes.s18,
                fontWeight: ManagerFontWeight.regular,
                color: ManagerColors.onBoardingSubTitleColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(flex: 4,),
        ],
      ),
    );
  }
}
