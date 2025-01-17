part of 'dismissible_page.dart';

const _transitionDuration = Duration(milliseconds: 250);

extension DismissibleContextExt on BuildContext {
  Future pushTransparentRoute(
    Widget page, {
    final Color backgroundColor = Colors.black38,
    final Duration transitionDuration = _transitionDuration,
    final Duration reverseTransitionDuration = _transitionDuration,
  }) =>
      Navigator.of(this).push(
        TransparentRoute(
          builder: (_) => page,
          backgroundColor: backgroundColor,
          transitionDuration: transitionDuration,
          reverseTransitionDuration: reverseTransitionDuration,
        ),
      );
}
