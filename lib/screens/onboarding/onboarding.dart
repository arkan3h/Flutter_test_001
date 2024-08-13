import 'package:aksamedia_test/controllers/onboarding_controller.dart';
import 'package:aksamedia_test/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/onboarding_indicator.dart';
import 'widget/onboarding_next.dart';
import 'widget/onboarding_page.dart';
import 'widget/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AImages.onBoardingImage1,
                title: 'Gratis Materi Belajar Menjadi Seller Handal',
                subtitle: 'Nggak bisa jualan?\nJangan khawatir, Tokorame akan membimbing kamu hingga menjadi seller langsung dari ahlinya',
              ),
              OnBoardingPage(
                image: AImages.onBoardingImage2,
                title: 'Ribuan Produk dengan Kualitas Terbaik',
                subtitle: 'Tokorame menyediakan ribuan produk dengan kualitas terbaik dari seller terpercaya',
              ),
              OnBoardingPage(
                image: AImages.onBoardingImage3,
                title: 'Toko Online Unik Untuk Kamu Jualan',
                subtitle: 'Subdomain unik dan toko online profesional siap pakai',
              ),
            ],
          ),
          const NextButton(),
          const SkipButton(),
          const PageIndicator(),
        ],
      ),
    );
  }
}





