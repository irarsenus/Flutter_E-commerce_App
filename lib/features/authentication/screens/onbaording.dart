import 'package:flutter/material.dart';
import 'package:test_gura1/utility/constant/image_strings_size.dart';
import 'package:test_gura1/utility/constant/sizes.dart';
import 'package:test_gura1/utility/constant/text_strings.dart';
import 'package:test_gura1/utility/helpers/helper_functions.dart';
    class OnBoardingScreen extends StatelessWidget{
      const OnBoardingScreen ({super.key});

      Widget build(BuildContext context){

        return const Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Image(
                    height: THelperFunctions.screenHeight() * 0.6,
                    width: THelperFunctions.screenWidth() * 0.8,
                    image: const  AssetImage(TImages.onBoardingImage1),
                  ),
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
              )
            ],
          ),

        );

      }

    }