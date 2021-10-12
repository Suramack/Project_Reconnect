import 'package:flutter/material.dart';

//Worker Text
Text workerUploadDocumentButtonText() {
  return const Text(
    'Upload your document',
    style: TextStyle(
      fontFamily: 'DMMono',
      letterSpacing: 0,
      fontSize: 14,
    ),
  );
}

Text termsAndConditionsTitle() => Text(
      'Accepting terms and conditions',
      style: TextStyle(
        fontFamily: 'Barlow',
        color: Colors.grey.shade700,
        fontSize: 15,
      ),
    );
Text termsAndConditionsSubtitle() => Text(
      'Please read our terms and conditions carefully',
      style: TextStyle(
        fontFamily: 'Barlow',
        color: Colors.grey.shade400,
      ),
    );
Text workerSignInButtonText() {
  return const Text(
    'connect',
    style: TextStyle(
      fontFamily: 'DMMono',
      letterSpacing: -0.5,
      fontSize: 16,
    ),
  );
}

//Worker Text Style
TextStyle workerlabelTextStyle() => const TextStyle(
      fontFamily: 'Barlow',
    );

TextStyle workerServicesTitleStyle() => TextStyle(
    fontFamily: 'Barlow',
    color: Colors.grey.shade800,
    fontSize: 15,
    fontWeight: FontWeight.normal);
TextStyle workerServicesSubTitleStyle() => TextStyle(
      fontFamily: 'Barlow',
      color: Colors.grey.shade400,
    );
