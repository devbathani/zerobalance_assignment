/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/home_screen_bottom_icon_2.png
  AssetGenImage get homeScreenBottomIcon2 =>
      const AssetGenImage('assets/icons/home_screen_bottom_icon_2.png');

  /// File path: assets/icons/home_screen_bottom_icon_3.png
  AssetGenImage get homeScreenBottomIcon3 =>
      const AssetGenImage('assets/icons/home_screen_bottom_icon_3.png');

  /// File path: assets/icons/home_screen_bottom_icon_4.png
  AssetGenImage get homeScreenBottomIcon4 =>
      const AssetGenImage('assets/icons/home_screen_bottom_icon_4.png');

  /// File path: assets/icons/home_screen_top_right_icon.png
  AssetGenImage get homeScreenTopRightIcon =>
      const AssetGenImage('assets/icons/home_screen_top_right_icon.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/burger.png
  AssetGenImage get burger => const AssetGenImage('assets/images/burger.png');

  /// File path: assets/images/highest_spent_icon.png
  AssetGenImage get highestSpentIcon =>
      const AssetGenImage('assets/images/highest_spent_icon.png');

  /// File path: assets/images/pending_kyc_ellipse.png
  AssetGenImage get pendingKycEllipse =>
      const AssetGenImage('assets/images/pending_kyc_ellipse.png');

  /// File path: assets/images/pow.png
  AssetGenImage get pow => const AssetGenImage('assets/images/pow.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/project_saving_icon.png
  AssetGenImage get projectSavingIcon =>
      const AssetGenImage('assets/images/project_saving_icon.png');

  /// File path: assets/images/shopping_bag.png
  AssetGenImage get shoppingBag =>
      const AssetGenImage('assets/images/shopping_bag.png');

  /// File path: assets/images/task_ellipse_1.png
  AssetGenImage get taskEllipse1 =>
      const AssetGenImage('assets/images/task_ellipse_1.png');

  /// File path: assets/images/task_ellipse_2.png
  AssetGenImage get taskEllipse2 =>
      const AssetGenImage('assets/images/task_ellipse_2.png');

  /// File path: assets/images/task_ellipse_3.png
  AssetGenImage get taskEllipse3 =>
      const AssetGenImage('assets/images/task_ellipse_3.png');

  /// File path: assets/images/task_ellipse_4.png
  AssetGenImage get taskEllipse4 =>
      const AssetGenImage('assets/images/task_ellipse_4.png');

  /// File path: assets/images/task_ellipse_5.png
  AssetGenImage get taskEllipse5 =>
      const AssetGenImage('assets/images/task_ellipse_5.png');

  /// File path: assets/images/task_ellipse_6.png
  AssetGenImage get taskEllipse6 =>
      const AssetGenImage('assets/images/task_ellipse_6.png');

  /// File path: assets/images/tv.png
  AssetGenImage get tv => const AssetGenImage('assets/images/tv.png');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
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

  String get path => _assetName;

  String get keyName => _assetName;
}
