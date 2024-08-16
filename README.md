<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->


# Timezone Dropdown Widget

This package provides a customizable timezone dropdown widget for Flutter applications. It allows users to easily select timezones from a comprehensive list, enhancing the user experience for applications that require timezone selection functionality.

The Timezone Dropdown Widget is designed to be modular, efficient, and user-friendly, making it simple to integrate into various Flutter projects that need timezone selection capabilities.


## Features

- Comprehensive list of timezones: Includes a wide range of timezones from around the world.
- Material Design: Utilizes Flutter's Material Design components for a polished look and feel.
- Customizable appearance: Easily adapt the widget's style to match your app's theme.
- Efficient data modeling: Proper modeling of timezone data for optimal performance.
- Search functionality: Allows users to quickly find their desired timezone.
- Localization support: Display timezone names in different languages (when available).
- Dropdown and modal sheet options: Choose between a dropdown menu or a full-screen modal sheet for selection.
- UTC offset display: Shows the UTC offset alongside each timezone for clarity.
- Current time display: Optionally show the current time in each timezone.
- Favorite timezones: Allow users to mark frequently used timezones as favorites.
- Grouping options: Group timezones by continent or UTC offset for easier navigation.
- Daylight Saving Time (DST) indicator: Clearly mark timezones that observe DST.
- Programmatic selection: Easily set or retrieve the selected timezone in your code.
- Callback support: Receive notifications when a user selects a new timezone.


## Getting started

To get started with the Timezone Dropdown Widget, follow these steps:

1. Add the package to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     timezone_dropdown:
       git:
         url: https://github.com/masnun-siam/timezone_dropdown.git
         ref: main  # Specify a branch or a commit hash
   ```

   You can also add the package from terminal using `pub` command:

   ```bash
   flutter pub add timezone_dropdown --git-url=https://github.com/masnun-siam/timezone_dropdown.git --git-ref=main
   ```

2. Run `flutter pub get` to fetch the package.

3. Import the package in your Dart code:

   ```dart
   import 'package:timezone_dropdown/timezone_dropdown.dart';
   ```

Now you're ready to use the Timezone Dropdown Widget in your Flutter application!


## Special Mention

- [Sohag Hasan](https://github.com/sohag-pro) for the original idea
