import 'package:flutter/material.dart';
import 'color.dart';
import 'supplemental/cut_corners_border.dart';
import 'color.dart';
import 'home.dart';
import 'login.dart';
import 'backdrop.dart'; // New code
import 'model/product.dart'; // New code

// TODO: Convert ShrineApp to stateful widget (104)
class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shrine',
      // TODO: Change home: to a Backdrop with a HomePage frontLayer (104)
      home: Backdrop(
        // TODO: Make currentCategory field take _currentCategory (104)
        currentCategory: Category.all,
        // TODO: Pass _currentCategory for frontLayer (104)
        frontLayer: HomePage(),
        // TODO: Change backLayer field value to CategoryMenuPage (104)
        backLayer: Container(color: kShrinePink100),
        frontTitle: Text('SHRINE'),
        backTitle: Text('MENU'),
      ),
     

    );
  }

  Route<dynamic>? _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => const LoginPage(),
      fullscreenDialog: true,
    );
  }
}

// TODO: Build a Shrine Theme (103)
final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrinePurple,
      secondary: kShrinePurple,
      error: kShrineErrorRed,
    ),
    scaffoldBackgroundColor: kShrineSurfaceWhite,
    textTheme: _buildShrineTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kShrinePurple,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: kShrinePurple,
        ),
      ),
      border: CutCornersBorder(),
    ),
  );
}

// TODO: Build a Shrine Text Theme (103)
TextTheme _buildShrineTextTheme(TextTheme base) {
  return base.copyWith(
    headline5: base.headline5!.copyWith(
      fontWeight: FontWeight.w500,
    ),
    headline6: base.headline6!.copyWith(
      fontSize: 18.0,
    ),
    caption: base.caption!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    bodyText1: base.bodyText1!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
  ).apply(
    fontFamily: 'Rubik',
    displayColor: kShrineBrown900,
    bodyColor: kShrineBrown900,
  );
}