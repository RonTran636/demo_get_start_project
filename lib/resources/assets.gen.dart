/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class Assets {
  Assets._();

  /// File path: assets/icons/ic_logo.svg
  static const SvgGenImage iconsIcLogo =
      SvgGenImage('assets/icons/ic_logo.svg');

  /// File path: assets/images/bg_visual.webp
  static const AssetGenImage imagesBgVisual =
      AssetGenImage('assets/images/bg_visual.webp');

  /// File path: assets/images/ic_avatar.webp
  static const AssetGenImage imagesIcAvatar =
      AssetGenImage('assets/images/ic_avatar.webp');

  /// File path: assets/images/ic_clear.webp
  static const AssetGenImage imagesIcClear =
      AssetGenImage('assets/images/ic_clear.webp');

  /// File path: assets/images/ic_cohs.webp
  static const AssetGenImage imagesIcCohs =
      AssetGenImage('assets/images/ic_cohs.webp');

  /// File path: assets/images/ic_ctu.webp
  static const AssetGenImage imagesIcCtu =
      AssetGenImage('assets/images/ic_ctu.webp');

  /// File path: assets/images/ic_definitely_not.webp
  static const AssetGenImage imagesIcDefinitelyNot =
      AssetGenImage('assets/images/ic_definitely_not.webp');

  /// File path: assets/images/ic_ec.webp
  static const AssetGenImage imagesIcEc =
      AssetGenImage('assets/images/ic_ec.webp');

  /// File path: assets/images/ic_kinda_like.webp
  static const AssetGenImage imagesIcKindaLike =
      AssetGenImage('assets/images/ic_kinda_like.webp');

  /// File path: assets/images/ic_like.webp
  static const AssetGenImage imagesIcLike =
      AssetGenImage('assets/images/ic_like.webp');

  /// File path: assets/images/ic_love.webp
  static const AssetGenImage imagesIcLove =
      AssetGenImage('assets/images/ic_love.webp');

  /// File path: assets/images/ic_not_a_fan.webp
  static const AssetGenImage imagesIcNotAFan =
      AssetGenImage('assets/images/ic_not_a_fan.webp');

  /// File path: assets/images/ic_not_really.webp
  static const AssetGenImage imagesIcNotReally =
      AssetGenImage('assets/images/ic_not_really.webp');

  /// File path: assets/images/ic_quiz.webp
  static const AssetGenImage imagesIcQuiz =
      AssetGenImage('assets/images/ic_quiz.webp');

  /// File path: assets/images/ic_snhu.webp
  static const AssetGenImage imagesIcSnhu =
      AssetGenImage('assets/images/ic_snhu.webp');

  /// File path: assets/images/ic_zero_chat.webp
  static const AssetGenImage imagesIcZeroChat =
      AssetGenImage('assets/images/ic_zero_chat.webp');

  /// File path: assets/images/ic_zero_goals.webp
  static const AssetGenImage imagesIcZeroGoals =
      AssetGenImage('assets/images/ic_zero_goals.webp');

  /// File path: assets/images/ic_zero_interest.webp
  static const AssetGenImage imagesIcZeroInterest =
      AssetGenImage('assets/images/ic_zero_interest.webp');

  /// File path: assets/images/ic_zero_notifications.webp
  static const AssetGenImage imagesIcZeroNotifications =
      AssetGenImage('assets/images/ic_zero_notifications.webp');

  /// File path: assets/images/img_card_archways.webp
  static const AssetGenImage imagesImgCardArchways =
      AssetGenImage('assets/images/img_card_archways.webp');

  /// File path: assets/images/img_card_mcd_careers.webp
  static const AssetGenImage imagesImgCardMcdCareers =
      AssetGenImage('assets/images/img_card_mcd_careers.webp');

  /// File path: assets/images/img_card_otherindrustries.webp
  static const AssetGenImage imagesImgCardOtherindrustries =
      AssetGenImage('assets/images/img_card_otherindrustries.webp');

  /// File path: assets/images/img_mcd_intro_video.webp
  static const AssetGenImage imagesImgMcdIntroVideo =
      AssetGenImage('assets/images/img_mcd_intro_video.webp');

  /// File path: assets/translations/en-US.json
  static const String translationsEnUS = 'assets/translations/en-US.json';

  /// File path: assets/videos/demo_video.mp4
  static const String videosDemoVideo = 'assets/videos/demo_video.mp4';

  /// File path: assets/videos/intro_video.mp4
  static const String videosIntroVideo = 'assets/videos/intro_video.mp4';
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
