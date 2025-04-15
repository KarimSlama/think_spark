/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/google.svg
  String get google => 'assets/icons/google.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/icons.ttf
  String get icons => 'assets/icons/icons.ttf';

  /// File path: assets/icons/send.svg
  String get send => 'assets/icons/send.svg';

  /// File path: assets/icons/shape.png
  AssetGenImage get shape => const AssetGenImage('assets/icons/shape.png');

  /// File path: assets/icons/shape_bg.svg
  String get shapeBg => 'assets/icons/shape_bg.svg';

  /// File path: assets/icons/shapes.svg
  String get shapes => 'assets/icons/shapes.svg';

  /// File path: assets/icons/voice.svg
  String get voice => 'assets/icons/voice.svg';

  /// List of all assets
  List<dynamic> get values =>
      [google, home, icons, send, shape, shapeBg, shapes, voice];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/circle_bg.svg
  String get circleBg => 'assets/images/circle_bg.svg';

  /// File path: assets/images/confirmation.svg
  String get confirmation => 'assets/images/confirmation.svg';

  /// File path: assets/images/dark_think_spark.svg
  String get darkThinkSpark => 'assets/images/dark_think_spark.svg';

  /// File path: assets/images/idea.json
  String get idea => 'assets/images/idea.json';

  /// File path: assets/images/idea2.json
  String get idea2 => 'assets/images/idea2.json';

  /// File path: assets/images/idea3.json
  String get idea3 => 'assets/images/idea3.json';

  /// File path: assets/images/idea4.json
  String get idea4 => 'assets/images/idea4.json';

  /// File path: assets/images/idea_bg.png
  AssetGenImage get ideaBg => const AssetGenImage('assets/images/idea_bg.png');

  /// File path: assets/images/light_bulb.png
  AssetGenImage get lightBulbPng =>
      const AssetGenImage('assets/images/light_bulb.png');

  /// File path: assets/images/light_bulb.svg
  String get lightBulbSvg => 'assets/images/light_bulb.svg';

  /// File path: assets/images/light_circle.svg
  String get lightCircle => 'assets/images/light_circle.svg';

  /// File path: assets/images/light_think_spark.svg
  String get lightThinkSpark => 'assets/images/light_think_spark.svg';

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/sign_adjust.png
  AssetGenImage get signAdjust =>
      const AssetGenImage('assets/images/sign_adjust.png');

  /// File path: assets/images/sign_welcome.json
  String get signWelcome => 'assets/images/sign_welcome.json';

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// List of all assets
  List<dynamic> get values => [
        background,
        circleBg,
        confirmation,
        darkThinkSpark,
        idea,
        idea2,
        idea3,
        idea4,
        ideaBg,
        lightBulbPng,
        lightBulbSvg,
        lightCircle,
        lightThinkSpark,
        logo,
        signAdjust,
        signWelcome,
        splash
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
