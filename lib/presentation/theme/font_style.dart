import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme? textThemeApp(){

  final Preferences prefs = Preferences();

  const _regular = FontWeight.w400;
  const _medium = FontWeight.w500;
  const _semiBold = FontWeight.w600;
  const _bold = FontWeight.w700;

  final TextTheme textTheme = TextTheme(
    headline1: GoogleFonts.lato(fontWeight: _bold, fontSize: 100.0,    color: prefs.whatTheme ? darkColorScheme.onPrimary      : lightColorScheme.primary  ),
    headline2: GoogleFonts.lato(fontWeight: _bold, fontSize: 40.0,    color: prefs.whatTheme ? darkColorScheme.primaryContainer      : lightColorScheme.primary  ),
    headline3: GoogleFonts.lato(fontWeight: _bold, fontSize: 40.0,    color: prefs.whatTheme ? darkColorScheme.onPrimary      : lightColorScheme.primary  ),
    headline4: GoogleFonts.lato(fontWeight: _bold, fontSize: 22.0,    color: prefs.whatTheme ? darkColorScheme.onBackground      : lightColorScheme.onBackground  ),
    caption: GoogleFonts.lato(fontWeight: _semiBold, fontSize: 16.0,  color: prefs.whatTheme ? darkColorScheme.onSurface         : lightColorScheme.onSurface  ),
    headline5: GoogleFonts.lato(fontWeight: _medium, fontSize: 20.0,  color: prefs.whatTheme ? darkColorScheme.onBackground      : lightColorScheme.onBackground  ),
    subtitle1: GoogleFonts.lato(fontWeight: _semiBold, fontSize: 16.0,color: prefs.whatTheme ? darkColorScheme.onPrimaryContainer : lightColorScheme.onPrimaryContainer   ),
    overline: GoogleFonts.lato(fontWeight: _medium, fontSize: 12.0,   color: prefs.whatTheme ? darkColorScheme.onPrimaryContainer : lightColorScheme.onPrimaryContainer   ),
    bodyText1: GoogleFonts.lato(fontWeight: _regular, fontSize: 14.0, color: prefs.whatTheme ? darkColorScheme.onPrimaryContainer : lightColorScheme.onPrimaryContainer   ),
    subtitle2: GoogleFonts.lato(fontWeight: _medium, fontSize: 14.0,  color: prefs.whatTheme ? darkColorScheme.onSurface         : lightColorScheme.onSurface   ),
    bodyText2: GoogleFonts.lato(fontWeight: _regular, fontSize: 16.0, color: prefs.whatTheme ? darkColorScheme.onSurface         : lightColorScheme.onSurface  ),
    headline6: GoogleFonts.lato(fontWeight: _bold, fontSize: 18.0,    color: prefs.whatTheme ? darkColorScheme.onSurfaceVariant   : lightColorScheme.onSurfaceVariant   ),
    button: GoogleFonts.lato(fontWeight: _semiBold, fontSize: 14.0,   color: prefs.whatTheme ? darkColorScheme.onPrimaryContainer : lightColorScheme.onPrimaryContainer   ),

  );



  return textTheme;

}