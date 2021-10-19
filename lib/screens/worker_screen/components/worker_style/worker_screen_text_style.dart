import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Size
const double workerEditProfileIconSize = 18;
//Color
final Color workerEditProfileIconColor = Colors.grey.shade500;
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
TextStyle clientHelpButtonTextStyle() => const TextStyle(
      fontSize: 17,
    );
TextStyle dashBoardOverviewTextStyle() => const TextStyle(
      color: Colors.lightBlueAccent,
      fontFamily: 'Barlow',
      fontSize: 22,
    );
TextStyle overviewPercentageTextStyle() => const TextStyle(
      color: Colors.green,
      fontFamily: 'DMMono',
      fontSize: 22,
    );
TextStyle dashboardTextStyle() => const TextStyle(
      color: Colors.lightBlue,
      fontSize: 24,
      fontFamily: 'Barlow',
    );
TextStyle dashboardTileTextStyle() => TextStyle(
      color: Colors.grey.shade400,
      fontFamily: 'Barlow',
      fontSize: 18,
    );
TextStyle performanceTextStyle() => TextStyle(
      color: Colors.grey.shade400,
      fontSize: 22,
      fontFamily: 'Barlow',
    );
TextStyle performanceStatusTextStyle() => const TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontFamily: 'Barlow',
      fontWeight: FontWeight.bold,
    );
TextStyle workerNameStyle() => TextStyle(
      color: Colors.pink.shade300,
      fontFamily: 'Barlow',
      fontSize: 22,
      fontWeight: FontWeight.bold,
    );
TextStyle workerProfileTileTextStyle() => TextStyle(
      color: Colors.grey.shade400,
      fontSize: 20,
      fontFamily: 'Barlow',
    );
TextStyle workerProfileTileSubTitleStyle() => TextStyle(
      color: Colors.grey.shade300,
      fontSize: 14,
      fontFamily: 'Barlow',
    );
TextStyle profileBottomSheetAppBarTitleStyle() => TextStyle(
      color: Colors.grey.shade500,
      fontFamily: 'Barlow',
      fontSize: 18,
    );
TextStyle workerEditProfileLabelStyle() => TextStyle(
      color: Colors.grey.shade500,
      fontFamily: 'Baelow',
    );
TextStyle workerEditProfileSaveButtonTextStyle() =>
    TextStyle(color: Colors.white, fontFamily: 'DMMono', fontSize: 20);

//Text
Text backToHomeButtonTextStyle() => const Text(
      'Back to home',
      style: TextStyle(
        fontFamily: 'DMMono',
        letterSpacing: -0.5,
        fontSize: 22,
      ),
    );
