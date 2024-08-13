import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.7,
          fit: BoxFit.fitWidth,
          image: AssetImage(image)
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 270,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32), 
                topRight: Radius.circular(32)
              )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
              child: Column(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                  // const SizedBox(height: 16),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.black,
                  //     minimumSize: Size(MediaQuery.of(context).size.width, 48),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(8.0),
                  //     ),
                  //   ),
                  //   child: const Text(
                  //     'Selanjutnya',
                  //     style: TextStyle(
                  //       fontSize: 16.0,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
