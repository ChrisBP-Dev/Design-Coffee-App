import 'package:flutter/material.dart';

extension Responsive on BuildContext {
  static const _desktopLimit = 700;

  static const _dialogLimit = 500;

  bool get isDesktop => getWidth > _desktopLimit;

  double get getWidth => MediaQuery.of(this).size.width;

  double get getHeight => MediaQuery.of(this).size.height;

  double get getPadding => isDesktop ? ((getWidth - _desktopLimit) / 2.5) : 0;

  double get getPaddingDialog => isDesktop ? ((getWidth - _dialogLimit) / 2) : 0;

  double get getPadding25 => (getPadding == 0) ? 25 : getPadding;

  double get getAspectRadio => 9 / 16;
}

extension AnimateTo on PageController {
  Future<void> animateTP({required int page}) => animateToPage(
        page,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
      );
}

extension NavigateToPage on BuildContext {
  Future<W?> push<W>({required Widget page}) => Navigator.push(this, MaterialPageRoute(builder: (_) => page));

  Future<W?> pushNamed<W>({required String routName, Object? arguments}) =>
      Navigator.pushNamed<W?>(this, routName, arguments: arguments);

  Future<W?> pushNamedAndRemoveUntil<W>({required String routName, Object? arguments}) =>
      Navigator.pushNamedAndRemoveUntil<W?>(this, routName, (f) => false, arguments: arguments);
}

extension DeclarativeBool on bool {
  W when<W>({required W Function() isTrue, required W Function() isFalse}) => this ? isTrue() : isFalse();

  W? whenOrNull<W>({W? Function()? isTrue, W? Function()? isFalse}) => this ? isTrue?.call() : isFalse?.call();
}
