import 'package:flutter/material.dart';
import 'package:test_gura1/utility/constant/image_strings_size.dart';
import 'package:test_gura1/utility/constant/sizes.dart';
import 'package:test_gura1/utility/constant/text_strings.dart';
import 'package:test_gura1/utility/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = THelperFunctions.screenWidth(context);
    final height = THelperFunctions.screenHeight(context);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        width: width * 0.8,
                        height: height * 0.6,
                        image: const AssetImage(TImages.onBoardingImage1),
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      Text(
                        TTexts.onBoardingSubTitle1,
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      Text(
                        TTexts.onBoardingSubTitle1,
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      Text(
                        TTexts.onBoardingSubTitle1,
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
