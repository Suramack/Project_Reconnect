import 'package:flutter/material.dart';

//Text Style
TextStyle requestStatusHeadingStyle() => TextStyle(
      fontFamily: 'Barlow',
      color: Colors.grey.shade800,
      fontSize: 22,
    );

TextStyle requestStatusSubHeadingStyle() => TextStyle(
      fontFamily: 'Barlow',
      color: Colors.grey.shade400,
    );

TextStyle requestStatusTitleStyle() => TextStyle(
      fontFamily: 'Barlow',
      color: Colors.grey.shade600,
      fontSize: 19,
    );
TextStyle requestStatusSubTitleStyle() => TextStyle(
      fontFamily: 'Barlow',
      color: Colors.grey.shade400,
      fontSize: 15,
    );
TextStyle appBarTitleStyle() => const TextStyle(
      color: Colors.green,
      fontFamily: 'Barlow',
      fontSize: 22,
      letterSpacing: -0.5,
    );

TextStyle clientNameStyle() => TextStyle(
      fontFamily: 'Barlow',
      color: Colors.grey.shade600,
      fontSize: 19,
    );
TextStyle clientDistance() => const TextStyle(
      color: Colors.green,
      fontFamily: 'Barlow',
      fontSize: 17,
    );
TextStyle clientHelpType() => TextStyle(
      color: Colors.grey.shade500,
      fontFamily: 'Barlow',
      fontSize: 14,
    );
TextStyle clientHelpButtonTextStyle() => TextStyle(
      fontSize: 17,
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
