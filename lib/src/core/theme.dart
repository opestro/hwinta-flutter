import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var borderRadius = BorderRadius.circular(12);
InputBorder getBorder({Color color = Colors.green, double width = 1}) {
  return OutlineInputBorder(
    borderRadius: borderRadius,
    borderSide: BorderSide(
      color: color,
      width: width,
    ),
  );
}

// getTheme({Brightness brightness = Brightness.dark, Color color = const Color(0xFFBBFF00)}) {
//   const primary = Colors.black;
//   const secondary = const Color(0xFFBBFF00);
//   const onPrimary = Colors.white;
//   Color? onBackground = brightness == Brightness.light ? Colors.black : Colors.black;

//   return ThemeData(
//     textTheme: GoogleFonts.alexandriaTextTheme(const TextTheme(
//       // app bar text to 16
//       titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
//       // use fontWeight: FontWeight.w300 for all
//       titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
//       titleSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
//       //
//       bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
//       bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
//       bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
//       //
//       labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
//       labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
//       labelSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
//       //
//       displayLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
//       displayMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
//       displaySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
//     )),
//     // snackbar
//     snackBarTheme: SnackBarThemeData(
//       contentTextStyle: GoogleFonts.alexandriaTextTheme(const TextTheme(
//         bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
//       )).bodyLarge,
//       behavior: SnackBarBehavior.floating,
//       width: 350,
//       insetPadding: const EdgeInsets.all(16),
//       showCloseIcon: true,
//       closeIconColor: Colors.grey,
//       backgroundColor: ColorScheme.fromSeed(seedColor: color, brightness: brightness).surface,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//         side: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1),
//       ),
//     ),
//     // color scheme
//     colorScheme: brightness == Brightness.light
//         ? const ColorScheme.light(
//             primary: secondary,
//             onPrimary: Colors.black,
//           )
//         : const ColorScheme.dark(
//             primary: secondary,
//             onPrimary: Colors.black,
//           ),
//     // inputs
//     inputDecorationTheme: InputDecorationTheme(
//       alignLabelWithHint: true,
//       contentPadding: EdgeInsets.zero,
//       constraints: const BoxConstraints(minHeight: 0),
//       errorStyle: GoogleFonts.alexandriaTextTheme(const TextTheme(
//         bodyLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
//       )).bodyLarge,
//       enabledBorder: getBorder(color: Colors.grey.withOpacity(.1)),
//       focusedBorder: getBorder(color: color.withOpacity(.9), width: 2),
//       errorBorder: getBorder(color: Colors.redAccent),
//       focusedErrorBorder: getBorder(color: Colors.red, width: 2),
//       // outlineBorder: BorderSide(color: color),
//       disabledBorder: getBorder(color: Colors.grey.withOpacity(0.1)),
//       activeIndicatorBorder: BorderSide(color: Colors.red),
//       filled: true,
//       fillColor: Colors.grey.withOpacity(.2),
//     ),
//     cardTheme: const CardTheme(
//       margin: EdgeInsets.zero,
//     ),
//     dividerColor: Colors.grey.withOpacity(0.25),
//     dividerTheme: DividerThemeData(
//       space: 0,
//       thickness: 1,
//       color: Colors.grey.withOpacity(0.25),
//     ),
//     buttonTheme: ButtonThemeData(
//       buttonColor: color,
//       textTheme: ButtonTextTheme.primary,
//       shape: RoundedRectangleBorder(
//         borderRadius: borderRadius,
//       ),
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         minimumSize: const Size(64, 48),
//         shape: RoundedRectangleBorder(
//           borderRadius: borderRadius,
//         ),
//       ),
//     ),
//     outlinedButtonTheme: OutlinedButtonThemeData(
//       style: OutlinedButton.styleFrom(
//         minimumSize: const Size(64, 48),
//         shape: RoundedRectangleBorder(
//           borderRadius: borderRadius,
//         ),
//         side: BorderSide(
//           color: Colors.grey.withOpacity(0.2),
//           width: 1,
//         ),
//       ),
//     ),
//     textButtonTheme: TextButtonThemeData(
//       style: TextButton.styleFrom(
//         foregroundColor: onBackground,
//         minimumSize: const Size(64, 48),
//         shape: RoundedRectangleBorder(
//           borderRadius: borderRadius,
//         ),
//       ),
//     ),
//     filledButtonTheme: FilledButtonThemeData(
//       style: FilledButton.styleFrom(
//         minimumSize: const Size(64, 48),
//         shape: RoundedRectangleBorder(
//           borderRadius: borderRadius,
//         ),
//       ),
//     ),
//     // floatingActionButtonTheme: FloatingActionButtonThemeData(
//     //   backgroundColor: color,
//     //   foregroundColor: Colors.white,
//     //   shape: RoundedRectangleBorder(
//     //     borderRadius: borderRadius,
//     //   ),
//     // ),
//     listTileTheme: ListTileThemeData(
//       shape: RoundedRectangleBorder(
//         borderRadius: borderRadius,
//       ),
//     ),
//     progressIndicatorTheme: const ProgressIndicatorThemeData(
//       linearMinHeight: 3,
//     ),
//     // chips
//     chipTheme: ChipThemeData(
//       pressElevation: 3,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//       brightness: brightness,
//       side: BorderSide(color: Colors.grey.withOpacity(0.2)),
//     ),
//   );
// }

getTheme({Brightness brightness = Brightness.light, Color color = Colors.green}) {
  var g = ColorScheme.fromSeed(
    seedColor: color,
    brightness: brightness,
  );
  return ThemeData(
    scaffoldBackgroundColor: 
      brightness == Brightness.light?
        const Color.fromARGB(255, 240, 240, 240):const Color.fromARGB(255, 20, 20, 20)
    ,
    textTheme: GoogleFonts.alexandriaTextTheme(
      const TextTheme(
        // app bar text to 16
        titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        // use fontWeight: FontWeight.w300 for all
        titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        titleSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        //
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        //
        labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        labelSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        //
        displayLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        displayMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        displaySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
      ),
    ),
    // snackbar
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: GoogleFonts.alexandriaTextTheme(const TextTheme(
        bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
      )).bodyLarge,
      behavior: SnackBarBehavior.floating,
      width: 350,
      insetPadding: const EdgeInsets.all(16),
      showCloseIcon: true,
      closeIconColor: Colors.grey,
      backgroundColor: g.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1),
      ),
    ),
    // color scheme
    colorScheme: ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: color,
      primary: color,
      // onPrimary: Colors.black,
      secondary: color,
      // onSecondary: Colors.white,
    ),
    // colorScheme: brightness == Brightness.light
    //     ? ColorScheme.light(
    //         primary: color,
    //         onPrimary: Colors.white,
    //         secondary: color,
    //         onSecondary: Colors.white,
    //       )
    //     : ColorScheme.dark(
    //         // primary: Colors.white,
    //         primary: color,
    //         onPrimary: Colors.black,
    //       ),
    // // inputs
    inputDecorationTheme: InputDecorationTheme(
      alignLabelWithHint: true,
      contentPadding: EdgeInsets.zero,
      constraints: const BoxConstraints(minHeight: 0),
      errorStyle: GoogleFonts.alexandriaTextTheme(const TextTheme(
        bodyLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
      )).bodyLarge,
      enabledBorder: getBorder(color: Colors.grey.withOpacity(.1)),
      focusedBorder: getBorder(color: color, width: 2),
      errorBorder: getBorder(color: Colors.red),
      focusedErrorBorder: getBorder(color: Colors.red, width: 2),
      // outlineBorder: BorderSide(color: color),
      disabledBorder: getBorder(color: Colors.grey.withOpacity(0.1)),
      activeIndicatorBorder: const BorderSide(color: Colors.red),
      filled: true,
      fillColor: Colors.grey.withOpacity(.2),
    ),
    cardTheme: const CardTheme(
      margin: EdgeInsets.zero,
    ),
    dividerColor: Colors.grey.withOpacity(0.25),
    dividerTheme: DividerThemeData(
      space: 0,
      thickness: 1,
      color: Colors.grey.withOpacity(0.25),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: color,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(64, 48),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(64, 48),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        minimumSize: const Size(64, 48),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size(64, 48),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
    ),
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //   backgroundColor: color,
    //   foregroundColor: Colors.white,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: borderRadius,
    //   ),
    // ),
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      linearMinHeight: 3,
    ),
    // chips
    chipTheme: ChipThemeData(
      pressElevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      brightness: brightness,
      side: BorderSide(color: Colors.grey.withOpacity(0.2)),
    ),
  );
}
