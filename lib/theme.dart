import 'package:flutter/material.dart';

class BaseAppTheme {
  static final ThemeData baseThemeData = ThemeData(
    fontFamily: 'Muli',
    textTheme: const TextTheme(

        // Headline styles are smaller than display styles. They're best-suited for
        // short, high-emphasis text on smaller screens. ie# Splash Screen
        headlineLarge: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange),
        headlineMedium: TextStyle(
            fontSize: 34.0, fontWeight: FontWeight.bold, color: Colors.black),

        // Titles are smaller than headline styles and should be used for shorter,
        // medium-emphasis text.
        titleLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
        titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
        titleSmall: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w900, color: Colors.grey),

        // Body styles are used for longer passages of text.
        bodyLarge: TextStyle(
            fontSize: 14.0, fontWeight: FontWeight.w900, color: Colors.grey),
        bodyMedium: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey),
        bodySmall: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500),

        // Label styles are smaller, utilitarian styles, used for areas of the UI
        // such as text inside of components or very small supporting text in the
        // content body, like captions.
        labelLarge: TextStyle(
            fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white),
        labelMedium: TextStyle(fontSize: 16, color: Colors.deepOrange),
        labelSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w200)),
  );
}
