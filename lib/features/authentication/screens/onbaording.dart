import 'package:flutter/material.dart';

    class OnBoardingScreen extends StatelessWidget{
      const OnBoardingScreen ({super.key});

      Widget build(BuildContext context){

        return const Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Image(image: AssetImage(TImages.))
                ],
              )
            ],
          ),

        );

      }

    }