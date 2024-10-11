import 'package:flutter/material.dart';
import '../constants/typography.dart';

class TextWidget extends Text {
  final String? typeText; 
  const TextWidget(
    super.data, 
    {
      super.key,
      this.typeText, 
      super.style,
      super.textAlign,
      super.maxLines,
      super.overflow,
      super.locale,
      super.selectionColor,
      super.semanticsLabel,
      super.softWrap,
      super.strutStyle,
      super.textDirection,
      super.textHeightBehavior,
      super.textScaleFactor,
      super.textWidthBasis,
    });

  @override
  Widget build(BuildContext context) {
    // Détermine le style en fonction du type de texte
    TextStyle baseStyle;
    switch (typeText) {
      case 'text-xs':
        baseStyle = AppTypography.textXs(context);
        break;
      case 'text-sm':
        baseStyle = AppTypography.textSm(context);
        break;
      case 'text-lg':
        baseStyle = AppTypography.textLg(context);
        break;
      case 'text-xl':
        baseStyle = AppTypography.textXl(context);
        break;
      case 'text-2xl':
        baseStyle = AppTypography.text2Xl(context);
        break;
      case 'text-3xl':
        baseStyle = AppTypography.text3Xl(context);
        break;
      case 'text-4xl':
        baseStyle = AppTypography.text4Xl(context);
        break;
      case 'text-5xl':
        baseStyle = AppTypography.text5Xl(context);
        break;
      case 'text-6xl':
        baseStyle = AppTypography.text6Xl(context);
        break;
      case 'text-7xl':
        baseStyle = AppTypography.text7Xl(context);
        break;
      case 'text-8xl':
        baseStyle = AppTypography.text8Xl(context);
        break;
      case 'text-9xl':
        baseStyle = AppTypography.text9Xl(context);
        break;
      default:
        baseStyle = AppTypography.textBase(context);
        break;
    }
    TextStyle effectiveStyle = baseStyle.merge(style);

    return Text(
      data!,
      style: effectiveStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      locale: locale,
      selectionColor: selectionColor,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      textDirection: textDirection,
      textScaleFactor: textScaleFactor,
      strutStyle: strutStyle,
      textWidthBasis: textWidthBasis,
    );
  }
}
