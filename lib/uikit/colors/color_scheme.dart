import 'package:change_theme/uikit/colors/color_palette.dart';
import 'package:flutter/material.dart';

const _skeletonOpacity = 0.06;

@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
  final Color primary;

  final Color onPrimary;

  final Color secondary;

  final Color onSecondary;

  final Color surface;

  final Color surfaceSecondary;

  final Color onSurface;

  final Color background;

  final Color backgroundSecondary;

  final Color backgroundTertiary;

  final Color tetradicBackground;

  final Color onBackground;

  final Color onBackgroundSecondary;

  final Color danger;

  final Color dangerSecondary;

  final Color onDanger;

  final Color textField;

  final Color textFieldLabel;

  final Color textFieldHelper;

  final Color frameTextFieldSecondary;

  final Color inactive;

  final Color positive;

  final Color onPositive;

  final Color skeletonPrimary;

  final Color skeletonOnPrimary;

  final Color skeletonSecondary;

  final Color skeletonTertiary;

  final Color shimmer;

  AppColorScheme.light()
      : primary = LightColorPalette.purple,
        onPrimary = LightColorPalette.white,
        secondary = LightColorPalette.greenYellow,
        onSecondary = LightColorPalette.chineseBlack,
        surface = LightColorPalette.white,
        surfaceSecondary = LightColorPalette.cultured,
        onSurface = LightColorPalette.chineseBlack,
        background = LightColorPalette.cultured,
        backgroundSecondary = LightColorPalette.darkScarlet,
        backgroundTertiary = LightColorPalette.cultured,
        onBackground = LightColorPalette.chineseBlack,
        onBackgroundSecondary = LightColorPalette.white,
        danger = LightColorPalette.folly,
        dangerSecondary = LightColorPalette.vividRaspberry,
        onDanger = LightColorPalette.white,
        textField = LightColorPalette.chineseBlack,
        textFieldLabel = LightColorPalette.black,
        textFieldHelper = LightColorPalette.black,
        frameTextFieldSecondary = LightColorPalette.chineseBlack,
        inactive = LightColorPalette.black,
        positive = LightColorPalette.greenYellow,
        onPositive = LightColorPalette.chineseBlack,
        skeletonPrimary = LightColorPalette.black.withOpacity(_skeletonOpacity),
        skeletonOnPrimary = LightColorPalette.white,
        skeletonSecondary = LightColorPalette.cultured,
        skeletonTertiary = LightColorPalette.lightSilver,
        tetradicBackground = LightColorPalette.lightGreen,
        shimmer = LightColorPalette.platinum;

  AppColorScheme.dark()
      : primary = DarkColorPalette.hanPurple,
        onPrimary = DarkColorPalette.white,
        secondary = DarkColorPalette.inchworm,
        onSecondary = DarkColorPalette.black,
        surface = DarkColorPalette.raisinBlack,
        surfaceSecondary = DarkColorPalette.raisinBlack,
        onSurface = DarkColorPalette.white,
        background = DarkColorPalette.raisinBlack,
        backgroundSecondary = DarkColorPalette.maroon,
        backgroundTertiary = DarkColorPalette.raisinBlack,
        onBackground = DarkColorPalette.white,
        onBackgroundSecondary = DarkColorPalette.white,
        danger = DarkColorPalette.brinkPink,
        dangerSecondary = DarkColorPalette.cyclamen,
        onDanger = DarkColorPalette.white,
        textField = DarkColorPalette.lightSilver,
        textFieldLabel = DarkColorPalette.white,
        textFieldHelper = DarkColorPalette.black,
        frameTextFieldSecondary = DarkColorPalette.lightSilver,
        inactive = DarkColorPalette.black,
        positive = DarkColorPalette.inchworm,
        onPositive = DarkColorPalette.black,
        skeletonPrimary = DarkColorPalette.black.withOpacity(_skeletonOpacity),
        skeletonOnPrimary = DarkColorPalette.white,
        skeletonSecondary = DarkColorPalette.raisinBlack,
        skeletonTertiary = DarkColorPalette.lightSilver,
        tetradicBackground = DarkColorPalette.etonBlue,
        shimmer = LightColorPalette.platinum;

  const AppColorScheme._({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.surface,
    required this.surfaceSecondary,
    required this.onSurface,
    required this.background,
    required this.backgroundSecondary,
    required this.backgroundTertiary,
    required this.onBackground,
    required this.onBackgroundSecondary,
    required this.danger,
    required this.dangerSecondary,
    required this.onDanger,
    required this.textField,
    required this.textFieldLabel,
    required this.textFieldHelper,
    required this.frameTextFieldSecondary,
    required this.inactive,
    required this.positive,
    required this.onPositive,
    required this.skeletonPrimary,
    required this.skeletonOnPrimary,
    required this.skeletonSecondary,
    required this.skeletonTertiary,
    required this.tetradicBackground,
    required this.shimmer,
  });

  @override
  ThemeExtension<AppColorScheme> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? surface,
    Color? surfaceSecondary,
    Color? onSurface,
    Color? background,
    Color? backgroundSecondary,
    Color? backgroundTertiary,
    Color? onBackground,
    Color? onBackgroundSecondary,
    Color? danger,
    Color? dangerSecondary,
    Color? onDanger,
    Color? textField,
    Color? textFieldLabel,
    Color? textFieldHelper,
    Color? frameTextFieldSecondary,
    Color? inactive,
    Color? positive,
    Color? onPositive,
    Color? skeletonPrimary,
    Color? skeletonOnPrimary,
    Color? skeletonSecondary,
    Color? skeletonTertiary,
    Color? tetradicBackground,
    Color? shimmer,
  }) {
    return AppColorScheme._(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      surface: surface ?? this.surface,
      surfaceSecondary: surfaceSecondary ?? this.surfaceSecondary,
      onSurface: onSurface ?? this.onSurface,
      background: background ?? this.background,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      backgroundTertiary: backgroundTertiary ?? this.backgroundTertiary,
      onBackground: onBackground ?? this.onBackground,
      onBackgroundSecondary:
          onBackgroundSecondary ?? this.onBackgroundSecondary,
      danger: danger ?? this.danger,
      dangerSecondary: dangerSecondary ?? this.dangerSecondary,
      onDanger: onDanger ?? this.onDanger,
      textField: textField ?? this.textField,
      textFieldLabel: textFieldLabel ?? this.textFieldLabel,
      textFieldHelper: textFieldHelper ?? this.textFieldHelper,
      frameTextFieldSecondary:
          frameTextFieldSecondary ?? this.frameTextFieldSecondary,
      inactive: inactive ?? this.inactive,
      positive: positive ?? this.positive,
      onPositive: onPositive ?? this.onPositive,
      skeletonPrimary: skeletonPrimary ?? this.skeletonPrimary,
      skeletonOnPrimary: skeletonOnPrimary ?? this.skeletonOnPrimary,
      skeletonSecondary: skeletonSecondary ?? this.skeletonSecondary,
      skeletonTertiary: skeletonTertiary ?? this.skeletonTertiary,
      tetradicBackground: tetradicBackground ?? this.tetradicBackground,
      shimmer: shimmer ?? this.shimmer,
    );
  }

  @override
  ThemeExtension<AppColorScheme> lerp(
    ThemeExtension<AppColorScheme>? other,
    double t,
  ) {
    if (other is! AppColorScheme) {
      return this;
    }

    return AppColorScheme._(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceSecondary:
          Color.lerp(surfaceSecondary, other.surfaceSecondary, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      background: Color.lerp(background, other.background, t)!,
      backgroundSecondary:
          Color.lerp(backgroundSecondary, other.backgroundSecondary, t)!,
      backgroundTertiary:
          Color.lerp(backgroundTertiary, other.backgroundTertiary, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      onBackgroundSecondary:
          Color.lerp(onBackgroundSecondary, other.onBackgroundSecondary, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
      dangerSecondary: Color.lerp(dangerSecondary, other.dangerSecondary, t)!,
      onDanger: Color.lerp(onDanger, other.onDanger, t)!,
      textField: Color.lerp(textField, other.textField, t)!,
      textFieldLabel: Color.lerp(textFieldLabel, other.textFieldLabel, t)!,
      textFieldHelper: Color.lerp(textFieldHelper, other.textFieldHelper, t)!,
      frameTextFieldSecondary: Color.lerp(
          frameTextFieldSecondary, other.frameTextFieldSecondary, t)!,
      inactive: Color.lerp(inactive, other.inactive, t)!,
      positive: Color.lerp(positive, other.positive, t)!,
      onPositive: Color.lerp(onPositive, other.onPositive, t)!,
      skeletonPrimary: Color.lerp(skeletonPrimary, other.skeletonPrimary, t)!,
      skeletonOnPrimary:
          Color.lerp(skeletonOnPrimary, other.skeletonOnPrimary, t)!,
      skeletonSecondary:
          Color.lerp(skeletonSecondary, other.skeletonSecondary, t)!,
      skeletonTertiary:
          Color.lerp(skeletonTertiary, other.skeletonTertiary, t)!,
      tetradicBackground:
          Color.lerp(tetradicBackground, other.tetradicBackground, t)!,
      shimmer: Color.lerp(shimmer, other.shimmer, t)!,
    );
  }

  static AppColorScheme of(BuildContext context) =>
      Theme.of(context).extension<AppColorScheme>()!;
}
