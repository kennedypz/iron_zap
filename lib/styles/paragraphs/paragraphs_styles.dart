import 'package:flutter/material.dart';
import 'package:whatsapp_julia/styles/sizes/size_styles.dart';

class Heading1 {
  static const double fontSize = SizeStyle.SIZE_25 + 1;
  static const FontWeight fontWeight = FontWeight.w500;
  static const double letterSpacing = 0.5;
  static const double lineHeight = 1.15;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Heading1.fontSize,
        fontWeight: isBold ? FontWeight.bold : Heading1.fontWeight,
        letterSpacing: Heading1.letterSpacing,
        height: Heading1.lineHeight);
  }
}

class Heading2 {
  static const double fontSize = SizeStyle.SIZE_20 + 2;
  static const FontWeight fontWeight = FontWeight.w600;
  static const double letterSpacing = 0.5;
  static const double lineHeight = 1.2;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Heading2.fontSize,
        fontWeight: isBold ? FontWeight.bold : Heading2.fontWeight,
        letterSpacing: Heading2.letterSpacing,
        height: Heading2.lineHeight);
  }
}

class Heading3 {
  static const double fontSize = SizeStyle.SIZE_20 - 1;
  static const FontWeight fontWeight = FontWeight.w500;
  static const double letterSpacing = 0.5;
  static const double lineHeight = 1.15;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Heading3.fontSize,
        fontWeight: isBold ? FontWeight.bold : Heading3.fontWeight,
        letterSpacing: Heading3.letterSpacing,
        height: Heading3.lineHeight);
  }
}

class Heading4 {
  static const double fontSize = SizeStyle.SIZE_16;
  static const FontWeight fontWeight = FontWeight.w900;
  static const double letterSpacing = 0.5;
  static const double lineHeight = 1.20;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Heading4.fontSize,
        fontWeight: isBold ? FontWeight.bold : Heading4.fontWeight,
        letterSpacing: Heading4.letterSpacing,
        height: Heading4.lineHeight);
  }
}

class Heading5 {
  static const double fontSize = SizeStyle.SIZE_16 - 2;
  static const FontWeight fontWeight = FontWeight.normal;
  static const double letterSpacing = 0.5;
  static const double lineHeight = 1.15;

  style({required Color color, isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Heading5.fontSize,
        fontWeight: isBold ? FontWeight.bold : Heading5.fontWeight,
        letterSpacing: Heading5.letterSpacing,
        height: Heading5.lineHeight);
  }
}

class Heading6 {
  static const double fontSize = SizeStyle.SIZE_16;
  static const FontWeight fontWeight = FontWeight.w600;
  static const double letterSpacing = 0.5;
  static const double lineHeight = 1.22;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Heading6.fontSize,
        fontWeight: isBold ? FontWeight.bold : Heading6.fontWeight,
        letterSpacing: Heading6.letterSpacing,
        height: Heading6.lineHeight);
  }
}

class Button {
  static const double fontSize = SizeStyle.SIZE_16 - 1;
  static const FontWeight fontWeight = FontWeight.bold;
  static const double letterSpacing = .0;
  static const double lineHeight = 1.05;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Button.fontSize,
        fontWeight: isBold ? FontWeight.bold : Button.fontWeight,
        letterSpacing: Button.letterSpacing,
        height: Button.lineHeight);
  }
}

class Button2 {
  static const double fontSize = SizeStyle.SIZE_16 - 2;
  static const FontWeight fontWeight = FontWeight.bold;
  static const double letterSpacing = .0;
  static const double lineHeight = 1.05;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Button2.fontSize,
        fontWeight: isBold ? FontWeight.bold : Button2.fontWeight,
        letterSpacing: Button2.letterSpacing,
        height: Button2.lineHeight);
  }
}

class Paragraph {
  static const double fontSize = SizeStyle.SIZE_16;
  static const FontWeight fontWeight = FontWeight.w400;
  static const double letterSpacing = -0.29;
  static const double lineHeight = 1.5;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Paragraph.fontSize,
        fontWeight: isBold ? FontWeight.bold : Paragraph.fontWeight,
        letterSpacing: Paragraph.letterSpacing,
        height: Paragraph.lineHeight);
  }
}

class Paragraph2 {
  static const double fontSize = SizeStyle.SIZE_25 + 1;
  static const FontWeight fontWeight = FontWeight.w400;
  static const double letterSpacing = 0.5;
  static const double lineHeight = 1.5;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Paragraph.fontSize,
        fontWeight: isBold ? FontWeight.bold : Paragraph.fontWeight,
        letterSpacing: Paragraph.letterSpacing,
        height: Button.lineHeight);
  }
}

class Caption {
  static const double fontSize = SizeStyle.SIZE_12 + 2;
  static const FontWeight fontWeight = FontWeight.w400;
  static const double letterSpacing = -0.29;
  static const double lineHeight = 1.50;

  style({required Color color, bool isBold = false, bool underlined = false}) {
    return TextStyle(
      color: color,
      fontSize: Caption.fontSize,
      fontWeight: isBold ? FontWeight.bold : Caption.fontWeight,
      letterSpacing: Caption.letterSpacing,
      height: Caption.lineHeight,
      decoration: underlined ? TextDecoration.underline : TextDecoration.none,
    );
  }
}

class CaptionBold {
  static const double fontSize = SizeStyle.SIZE_16 - 2;
  static const FontWeight fontWeight = FontWeight.bold;
  static const double letterSpacing = -0.29;
  static const double lineHeight = 1.20;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: CaptionBold.fontSize,
        fontWeight: CaptionBold.fontWeight,
        letterSpacing: CaptionBold.letterSpacing,
        height: CaptionBold.lineHeight);
  }
}

class CaptionMedium {
  static const double fontSize = SizeStyle.SIZE_16 - 1;
  static const FontWeight fontWeight = FontWeight.w500;
  static const double letterSpacing = -0.29;
  static const double lineHeight = 1.2;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: CaptionMedium.fontSize,
        fontWeight: isBold ? FontWeight.bold : CaptionMedium.fontWeight,
        letterSpacing: CaptionMedium.letterSpacing,
        height: CaptionMedium.lineHeight);
  }
}

class Caption2 {
  static const double fontSize = SizeStyle.SIZE_12 + 1;
  static const FontWeight fontWeight = FontWeight.w600;
  static const double letterSpacing = .0;
  static const double lineHeight = 1.20;

  style({required Color color, isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Caption2.fontSize,
        fontWeight: isBold ? FontWeight.bold : Caption2.fontWeight,
        letterSpacing: Caption2.letterSpacing,
        height: Caption2.lineHeight);
  }
}

class Caption3 {
  static const double fontSize = SizeStyle.SIZE_16 + 1;
  static const FontWeight fontWeight = FontWeight.normal;
  static const double letterSpacing = 0.1;
  static const double lineHeight = 1.40;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Caption3.fontSize,
        fontWeight: isBold ? FontWeight.bold : Caption3.fontWeight,
        letterSpacing: Caption3.letterSpacing,
        height: Caption3.lineHeight);
  }
}

class Caption4 {
  static const double fontSize = SizeStyle.SIZE_12 - 2;
  static const FontWeight fontWeight = FontWeight.w600;
  static const double letterSpacing = 0.1;
  static const double lineHeight = 1.20;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Caption4.fontSize,
        fontWeight: isBold == true ? FontWeight.bold : Caption4.fontWeight,
        letterSpacing: Caption4.letterSpacing,
        height: Caption4.lineHeight);
  }
}

class Caption5 {
  static const double fontSize = SizeStyle.SIZE_12 + 1;
  static const FontWeight fontWeight = FontWeight.w600;
  static const double letterSpacing = 0.1;
  static const double lineHeight = 1.20;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: Caption5.fontSize,
        fontWeight: isBold ? FontWeight.bold : Caption5.fontWeight,
        letterSpacing: Caption5.letterSpacing,
        height: Caption5.lineHeight);
  }
}

class DashboardButtonStyle {
  static const double fontSize = SizeStyle.SIZE_8 + 2;
  static const FontWeight fontWeight = FontWeight.w500;
  static const double letterSpacing = -0.19;
  static const double lineHeight = 1.0;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: DashboardButtonStyle.fontSize,
        fontWeight: isBold ? FontWeight.bold : DashboardButtonStyle.fontWeight,
        letterSpacing: DashboardButtonStyle.letterSpacing,
        height: DashboardButtonStyle.lineHeight);
  }
}

class CardTitleText {
  static const double fontSize = SizeStyle.SIZE_12;
  static const FontWeight fontWeight = FontWeight.normal;
  static const double letterSpacing = -0.29;
  static const double lineHeight = 1.20;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: CardTitleText.fontSize,
        fontWeight: isBold ? FontWeight.bold : CardTitleText.fontWeight,
        letterSpacing: CardTitleText.letterSpacing,
        height: CardTitleText.lineHeight);
  }
}

class CardText {
  static const double fontSize = SizeStyle.SIZE_12;
  static const FontWeight fontWeight = FontWeight.normal;
  static const double letterSpacing = -0.29;
  static const double lineHeight = 1.20;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: CardTitleText.fontSize,
        fontWeight: CardTitleText.fontWeight,
        letterSpacing: CardTitleText.letterSpacing,
        height: CardTitleText.lineHeight);
  }
}

class ConfirmationTitle {
  static const double fontSize = 23.0;
  static const FontWeight fontWeight = FontWeight.w500;
  static const double letterSpacing = 0;
  static const double lineHeight = 1.5;

  style({required Color color}) {
    return TextStyle(
        color: color,
        fontSize: ConfirmationTitle.fontSize,
        fontWeight: ConfirmationTitle.fontWeight,
        letterSpacing: ConfirmationTitle.letterSpacing,
        height: ConfirmationTitle.lineHeight);
  }
}

class ConfirmationText {
  static const double fontSize = 16.0;
  static const FontWeight fontWeight = FontWeight.w400;
  static const double letterSpacing = -0.29;
  static const double lineHeight = 1.60;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: ConfirmationText.fontSize,
        fontWeight: isBold ? FontWeight.bold : ConfirmationText.fontWeight,
        letterSpacing: ConfirmationText.letterSpacing,
        height: ConfirmationText.lineHeight);
  }
}

class TransactionMonthTextStyle {
  static const double fontSize = SizeStyle.SIZE_12;
  static const FontWeight fontWeight = FontWeight.w500;
  static const double letterSpacing = -0.29;
  static const double lineHeight = 1.60;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: TransactionMonthTextStyle.fontSize,
        fontWeight:
            isBold ? FontWeight.bold : TransactionMonthTextStyle.fontWeight,
        letterSpacing: TransactionMonthTextStyle.letterSpacing,
        height: TransactionMonthTextStyle.lineHeight);
  }
}

class TransactionHistoryTitle {
  static const double fontSize = SizeStyle.SIZE_12 + 2;
  static const FontWeight fontWeight = FontWeight.normal;
  static const double letterSpacing = 0;
  static const double lineHeight = 1.60;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: TransactionHistoryTitle.fontSize,
        fontWeight:
            isBold ? FontWeight.bold : TransactionHistoryTitle.fontWeight,
        letterSpacing: TransactionHistoryTitle.letterSpacing,
        height: TransactionHistoryTitle.lineHeight);
  }
}

class TransactionHistorySubTitle {
  static const double fontSize = SizeStyle.SIZE_12 - 2;
  static const FontWeight fontWeight = FontWeight.normal;
  static const double letterSpacing = 0;
  static const double lineHeight = 1.60;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: TransactionHistorySubTitle.fontSize,
        fontWeight:
            isBold ? FontWeight.bold : TransactionHistorySubTitle.fontWeight,
        letterSpacing: TransactionHistorySubTitle.letterSpacing,
        height: TransactionHistorySubTitle.lineHeight);
  }
}

class CustomTextStyle {
  static const double fontSize = 11.0;
  static const FontWeight fontWeight = FontWeight.w600;
  static const double letterSpacing = 0.2;
  static const double lineHeight = 1.20;

  style(
      {required Color color,
      required double fontSize,
      required FontWeight fontWeight,
      double letterSpacing = 0.2,
      double lineHeight = 1.20}) {
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        height: lineHeight);
  }
}

class ModalTitle {
  static const double fontSize = SizeStyle.SIZE_20;
  static const FontWeight fontWeight = FontWeight.w500;
  static const double letterSpacing = 0;
  static const double lineHeight = 1.20;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: ModalTitle.fontSize,
        fontWeight: isBold ? FontWeight.bold : ModalTitle.fontWeight,
        letterSpacing: ModalTitle.letterSpacing,
        height: ModalTitle.lineHeight);
  }
}

class SearchButtonStyle {
  static const double fontSize = SizeStyle.SIZE_8 + 2;
  static const FontWeight fontWeight = FontWeight.w900;
  static const double letterSpacing = 0;
  static const double lineHeight = 1.20;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: SearchButtonStyle.fontSize,
        fontWeight: isBold ? FontWeight.bold : SearchButtonStyle.fontWeight,
        letterSpacing: SearchButtonStyle.letterSpacing,
        height: SearchButtonStyle.lineHeight);
  }
}

class PixDropDownTitle {
  static const double fontSize = SizeStyle.SIZE_20;
  static const FontWeight fontWeight = FontWeight.w600;
  static const double letterSpacing = 0.5;
  static const double lineHeight = 1.2;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: PixDropDownTitle.fontSize,
        fontWeight: isBold ? FontWeight.bold : PixDropDownTitle.fontWeight,
        letterSpacing: PixDropDownTitle.letterSpacing,
        height: PixDropDownTitle.lineHeight);
  }
}

class PixPageTitle {
  static const double fontSize = SizeStyle.SIZE_16;
  static const FontWeight fontWeight = FontWeight.w500;
  static const double letterSpacing = -0.22;
  static const double lineHeight = 1.3;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
        color: color,
        fontSize: PixPageTitle.fontSize,
        fontWeight: isBold ? FontWeight.bold : PixPageTitle.fontWeight,
        letterSpacing: PixPageTitle.letterSpacing,
        height: PixPageTitle.lineHeight);
  }
}

class MessageCardTitle {
  static const double fontSize = SizeStyle.SIZE_12 + 2;
  static const FontWeight fontWeight = FontWeight.w600;
  static const double letterSpacing = 0.1;
  static const double lineHeight = 0.1;

  style({required Color color, bool isBold = false}) {
    return TextStyle(
      color: color,
      fontSize: MessageCardTitle.fontSize,
      fontWeight: isBold ? FontWeight.bold : MessageCardTitle.fontWeight,
      letterSpacing: MessageCardTitle.letterSpacing,
      height: MessageCardTitle.lineHeight,
    );
  }
}

class OnboardingText {
  static const double fontSize = SizeStyle.SIZE_16;
  static const FontWeight fontWeight = FontWeight.w400;
  static const double letterSpacing = 0.1;
  static const double lineHeight = 1.5;
  style({required Color color, bool isBold = false}) {
    return TextStyle(
      color: color,
      fontSize: OnboardingText.fontSize,
      fontWeight: isBold ? FontWeight.bold : OnboardingText.fontWeight,
      letterSpacing: OnboardingText.letterSpacing,
      height: OnboardingText.lineHeight,
    );
  }
}

class OnboardingTitle {
  static const double fontSize = SizeStyle.SIZE_12 + 2;
  static const FontWeight fontWeight = FontWeight.w600;
  static const double letterSpacing = .0;
  static const double lineHeight = 1.2;
  style({required Color color, bool isBold = false}) {
    return TextStyle(
      color: color,
      fontSize: OnboardingText.fontSize,
      fontWeight: isBold ? FontWeight.bold : OnboardingText.fontWeight,
      letterSpacing: OnboardingText.letterSpacing,
      height: OnboardingText.lineHeight,
    );
  }
}

class MobbyHubCheckoutAmount {
  static const double fontSize = SizeStyle.SIZE_32;
  static const FontWeight fontWeight = FontWeight.w600;
  static const double letterSpacing = -1.17;
  style({required Color color, bool isBold = false}) {
    return TextStyle(
      color: color,
      fontSize: MobbyHubCheckoutAmount.fontSize,
      fontWeight: isBold ? FontWeight.bold : OnboardingText.fontWeight,
      letterSpacing: MobbyHubCheckoutAmount.letterSpacing,
    );
  }
}

// ignore: non_constant_identifier_names
List<BoxShadow> ShadowLarge = [
  BoxShadow(
    color: Colors.black.withOpacity(0.1),
    blurRadius: 4,
    spreadRadius: 0,
    offset: const Offset(0, 4),
  ),
  BoxShadow(
    color: Colors.black.withOpacity(0.1),
    blurRadius: 32,
    spreadRadius: 0,
    offset: const Offset(0, 8),
  ),
];

// ignore: non_constant_identifier_names
List<BoxShadow> ShadowMedium = [
  BoxShadow(
    color: Colors.black.withOpacity(0.2),
    blurRadius: 4,
    spreadRadius: 0,
    offset: const Offset(0, 2),
  ),
  BoxShadow(
    color: Colors.black.withOpacity(0.1),
    blurRadius: 8,
    spreadRadius: 0,
    offset: const Offset(0, 2),
  ),
];

// ignore: non_constant_identifier_names
List<BoxShadow> ShadowSmall = [
  BoxShadow(
    color: Colors.black.withOpacity(0.2),
    blurRadius: 2,
    spreadRadius: 0,
    offset: const Offset(0, 1),
  ),
];
