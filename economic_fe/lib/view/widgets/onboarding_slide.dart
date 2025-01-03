import 'package:economic_fe/view/theme/palette.dart';
import 'package:flutter/material.dart';

class OnboardingSlide extends StatelessWidget {
  final String title;
  final String subtitle;
  final int currentIdx;

  const OnboardingSlide(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.currentIdx});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Placeholder(fallbackHeight: 200, fallbackWidth: 200), // 이미지 자리
        const SizedBox(height: 30),
        Text(
          title,
          style: Palette.cardTitle,
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: Palette.cardSub,
        ),
        const SizedBox(
          height: 3,
        ),
        const SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: currentIdx == 0 ? 32 : 8,
                height: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: currentIdx == 0
                        ? const Color(0xff767676)
                        : const Color(0xff2ad6d6))),
            const SizedBox(
              width: 8,
            ),
            Container(
                width: currentIdx == 1 ? 32 : 8,
                height: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: currentIdx == 1
                        ? const Color(0xff767676)
                        : const Color(0xff2ad6d6))),
            const SizedBox(
              width: 8,
            ),
            Container(
                width: currentIdx == 2 ? 32 : 8,
                height: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: currentIdx == 2
                        ? const Color(0xff767676)
                        : const Color(0xff2ad6d6))),
            const SizedBox(
              width: 8,
            ),
            // Container(
            //     width: currentIdx == 3 ? 32 : 8,
            //     height: 8,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(100),
            //         color: currentIdx == 3
            //             ? const Color(0xff767676)
            //             : const Color(0xff2ad6d6))),
          ],
        ),
      ],
    );
  }
}
