import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.white,
                Colors.white.withValues(alpha: 0.0),
              ],
              stops: const [0.14, 0.4],
            )),
            child: Image.asset('assets/images/onboarding_doctor.png')),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor \nAppointment App',
            style: TextStyles.font32BlueBold,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
