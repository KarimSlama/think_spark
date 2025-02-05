/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/circle_bg.svg
  String get circleBg => 'assets/images/circle_bg.svg';

  /// File path: assets/images/idea.json
  String get idea => 'assets/images/idea.json';

  /// File path: assets/images/idea2.json
  String get idea2 => 'assets/images/idea2.json';

  /// File path: assets/images/idea3.json
  String get idea3 => 'assets/images/idea3.json';

  /// File path: assets/images/idea4.json
  String get idea4 => 'assets/images/idea4.json';

  /// File path: assets/images/idea_implementation_img1.png
  AssetGenImage get ideaImplementationImg1 =>
      const AssetGenImage('assets/images/idea_implementation_img1.png');

  /// File path: assets/images/idea_implementation_img2.png
  AssetGenImage get ideaImplementationImg2 =>
      const AssetGenImage('assets/images/idea_implementation_img2.png');

  /// File path: assets/images/idea_implementation_img3.png
  AssetGenImage get ideaImplementationImg3 =>
      const AssetGenImage('assets/images/idea_implementation_img3.png');

  /// File path: assets/images/light_bulb.png
  AssetGenImage get lightBulbPng =>
      const AssetGenImage('assets/images/light_bulb.png');

  /// File path: assets/images/light_bulb.svg
  String get lightBulbSvg => 'assets/images/light_bulb.svg';

  /// File path: assets/images/light_circle.svg
  String get lightCircle => 'assets/images/light_circle.svg';

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// File path: assets/images/think_spark.svg
  String get thinkSpark => 'assets/images/think_spark.svg';
  /// File path: assets/images/think_spark.png
  AssetGenImage get thinkSparkPng =>
      const AssetGenImage('assets/images/think_spark.png');

  /// File path: assets/images/think_spark.svg
  String get thinkSparkSvg => 'assets/images/think_spark.svg';

  /// List of all assets
  List<dynamic> get values => [
        background,
        circleBg,
        idea,
        idea2,
        idea3,
        idea4,
        ideaImplementationImg1,
        ideaImplementationImg2,
        ideaImplementationImg3,
        lightBulbPng,
        lightBulbSvg,
        lightCircle,
        logo,
        splash,
        thinkSpark
        lightBulbPng,
        lightBulbSvg,
        logo,
        splash,
        thinkSparkPng,
        thinkSparkSvg
      ];
}

class Assets {
  Assets._();

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
