import 'package:aksamedia_test/controllers/product_image_controller.dart';
import 'package:aksamedia_test/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductImageController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 424,
              child: Stack(
                children: [
                  ProductImage(controller: controller),
                  const ProductAppBar(),
                  ProductImageIndicator(controller: controller),
                  const ShareButton()
                ],
              ),
            ),
            const TitleSection(),
            Container(height: 1, color: Colors.grey),
            const ProductDescription(),
            Container(height: 1, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Deskripsi',
                style: TextStyle(fontSize: 16),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/ic_document.png')
              )
            ],
          ),
          const Text(
            '*New Material*\nTerbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\nMenggunakan fit Relaxed Fit.\n-\nSIZE CHART RELAXED SHIRT....',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selengkapnya',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.lightBlue
                  ),
                ),
                SizedBox(width: 8,),
                Image(
                  image: AssetImage('assets/icons/ic_arrow_down.png')
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/ic_import.png')
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/ic_cart.png')
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Beauty Set by Irvie',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          Text(
            'Irvie group official',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14
            ),
          ),
          SizedBox(height: 16,),
        ],
      ),
    );
  }
}

class ShareButton extends StatelessWidget {
  const ShareButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 64,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: const Row(
                  children: [
                    Text(
                      'NEW',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Product Baru',
                      style: TextStyle(
                        fontSize: 14
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/ic_share.png'),
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductImageIndicator extends StatelessWidget {
  const ProductImageIndicator({
    super.key,
    required this.controller,
  });

  final ProductImageController controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 72.0),
        child: SmoothPageIndicator(
          effect: const ExpandingDotsEffect(
            activeDotColor: Colors.white,
            dotHeight: 4,
            dotWidth: 4,
            dotColor: Colors.white,
          ),
          controller: controller.pageController,
          count: 4
        ),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.controller,
  });

  final ProductImageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller.pageController,
      onPageChanged: controller.updatePageIndicator,
      children: [
        Image(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,
          image: const AssetImage(AImages.productImage)
        ),
        Image(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,
          image: const AssetImage(AImages.productImage)
        ),
        Image(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,
          image: const AssetImage(AImages.productImage)
        ),
        Image(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,
          image: const AssetImage(AImages.productImage)
        ),
      ],
    );
  }
}