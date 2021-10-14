import 'package:flutter/material.dart';

//Text Style
TextStyle requesStatusHeadingStyle() => TextStyle(
      fontFamily: 'Barlow',
      color: Colors.grey.shade800,
      fontSize: 22,
    );

TextStyle requesStatusSubHeadingStyle() => TextStyle(
      fontFamily: 'Barlow',
      color: Colors.grey.shade400,
    );

TextStyle requesStatusTitleStyle() => TextStyle(
      fontFamily: 'Barlow',
      color: Colors.grey.shade600,
      fontSize: 19,
    );
TextStyle requesStatusSubTitleStyle() => TextStyle(
      fontFamily: 'Barlow',
      color: Colors.grey.shade400,
      fontSize: 15,
    );

//Text
Text backToHomeButtonTextStyle() => const Text(
      'Back to home',
      style: TextStyle(
        fontFamily: 'DMMono',
        letterSpacing: -0.5,
        fontSize: 22,
      ),
    );
