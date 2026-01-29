import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // This Gap widget do the same role of SizedBox
          const Gap(280),
          SvgPicture.asset(
            'assets/images/Hungry_.svg',
          ),
          const Spacer(),
          Image.asset('assets/images/burger.png'),
        ],
      ),
    );
  }
}
