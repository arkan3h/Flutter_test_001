import 'package:aksamedia_test/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 16, top: 32),
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text(
            'Lewati',
            style: TextStyle(
              color: Colors.black87
            ),
          ),
        ),
      )
    );
  }
}
