import 'package:flutter/material.dart';
import 'package:test_gura1/utility/constant/image_strings_size.dart';
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
                    width: THelperFunctions.screenWidth() * 0.8,
                    height: THelperFunctions.screenHeight() * 0.6,
                    image: AssetImage(TImages.onBoardingImage1),
                  ),
                ],
              )
            ],
          ),

        );

      }

    }