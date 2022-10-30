import 'package:flutter/material.dart';

class AppSizes extends ThemeExtension<AppSizes> {
  //app
  double get sizeHeaderBar => 65;

  // radius
  Radius get radius10 => const Radius.circular(10);
  Radius get radius15 => const Radius.circular(15);
  Radius get radius30 => const Radius.circular(30);

  BorderRadius get borderRadius10 => BorderRadius.all(radius10);
  BorderRadius get borderRadius15 => BorderRadius.all(radius15);
  BorderRadius get borderRadius30 => BorderRadius.all(radius30);

  // spaces
  // double get space100 => 100;
  // double get space50 => 50;
  // double get space30 => 30;
  // double get space20 => 20;
  // double get space15 => 15;
  // double get space5 => 5;

  // margins
  EdgeInsets get marginV8 => const EdgeInsets.symmetric(vertical: 8);
  EdgeInsets get marginH8 => const EdgeInsets.symmetric(horizontal: 8);
  EdgeInsets get margin8 => const EdgeInsets.all(8);

  EdgeInsets get marginV12 => const EdgeInsets.symmetric(vertical: 12);
  EdgeInsets get marginH12 => const EdgeInsets.symmetric(horizontal: 12);
  EdgeInsets get margin12 => const EdgeInsets.all(12);

  EdgeInsets get marginV16 => const EdgeInsets.symmetric(vertical: 16);
  EdgeInsets get marginH16 => const EdgeInsets.symmetric(horizontal: 16);
  EdgeInsets get margin16 => const EdgeInsets.all(16);

  EdgeInsets get marginV20 => const EdgeInsets.symmetric(vertical: 20);
  EdgeInsets get marginH20 => const EdgeInsets.symmetric(horizontal: 20);
  EdgeInsets get margin20 => const EdgeInsets.all(20);

  @override
  ThemeExtension<AppSizes> copyWith() {
    return this;
  }

  @override
  ThemeExtension<AppSizes> lerp(ThemeExtension<AppSizes>? other, double t) {
    return this;
  }
}
