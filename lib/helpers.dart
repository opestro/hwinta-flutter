import 'package:feeef_marchant/feeef/core/widgets/alerts.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

// consts
const kSmDown = 500.0;
const kMdDown = 960.0;
const kLgDown = 1280.0;
const kXlDown = 1920.0;
const kXxlDown = double.infinity;
// uo
const kSmUp = 0.0;
const kMdUp = 600.0;
const kLgUp = 960.0;
const kXlUp = 1280.0;
const kXxlUp = 1920.0;

/// Checks if the screen width is small (less than 600px).
bool isSm(double width) => width < kSmDown;

/// Checks if the screen width is medium (less than 960px and greater than or equal to 600px).
/// If [orLess] is true, it checks if the width is less than 960px.
bool isMd(double width, {bool orLess = true}) {
  return orLess ? width < kMdDown : width >= kMdUp && width < kMdDown;
}

/// Checks if the screen width is large (less than 1280px and greater than or equal to 960px).
/// If [orLess] is true, it checks if the width is less than 1280px.
bool isLg(double width, {bool orLess = true}) {
  return orLess ? width < kLgDown : width >= kLgUp && width < kLgDown;
}

/// Checks if the screen width is extra large (less than 1920px and greater than or equal to 1280px).
/// If [orLess] is true, it checks if the width is less than 1920px.
bool isXl(double width, {bool orLess = true}) {
  return orLess ? width < kXlDown : width >= kXlUp && width < kXlDown;
}

/// Checks if the screen width is extra extra large (less than 2560px and greater than or equal to 1920px).
bool isXxl(double width) => width >= kXxlUp;

/// Returns a value based on the screen size.
///
/// [sm], [md], [lg], [xl], and [xxl] represent the values to return for different screen sizes.
/// If [orLess] is true, it checks if the width is less than the respective screen size.
///
/// At least one value must be provided.
T? forScreen<T>({
  required double width,
  T? sm,
  T? md,
  T? lg,
  T? xl,
  T? xxl,
  bool orLess = true,
}) {
  assert(sm != null || md != null || lg != null || xl != null, 'At least one value must be provided');
  // return the value in current screen size, if value is missing, return the value of the closest screen size
  if (isSm(width)) return sm ?? md ?? lg ?? xl ?? xxl;
  if (isMd(width, orLess: orLess)) return md ?? lg ?? xl ?? xxl ?? sm;
  if (isLg(width, orLess: orLess)) return lg ?? xl ?? xxl ?? md ?? sm;
  if (isXl(width, orLess: orLess)) return xl ?? xxl ?? lg ?? md ?? sm;
  if (isXxl(width)) return xxl ?? xl ?? lg ?? md ?? sm;
  return sm;
}

enum ForScreenWidthOf {
  mediaQuery,
  layoutBuilder,
}

class ForScreen extends StatelessWidget {
  final Widget? sm;
  final Widget? md;
  final Widget? lg;
  final Widget? xl;
  final Widget? xxl;
  final bool orLess;
  final ForScreenWidthOf widthOf;
  const ForScreen({super.key, this.sm, this.md, this.lg, this.xl, this.xxl, this.orLess = true, this.widthOf = ForScreenWidthOf.layoutBuilder}) : assert(sm != null || md != null || lg != null || xl != null, 'At least one value must be provided');

  @override
  Widget build(BuildContext context) {
    if (widthOf == ForScreenWidthOf.mediaQuery) {
      return forScreen<Widget>(
        width: MediaQuery.sizeOf(context).width,
        sm: sm,
        md: md,
        lg: lg,
        xl: xl,
        xxl: xxl,
      )!;
    }
    return LayoutBuilder(builder: (context, constraints) {
      return forScreen<Widget>(
        width: constraints.maxWidth,
        sm: sm,
        md: md,
        lg: lg,
        xl: xl,
        xxl: xxl,
      )!;
    });
  }
}

/// Shows a SnackBar with the provided [content] and [actionLabel].
///
/// The [actionLabel] is optional. If provided, it will show a button with the label that hides the SnackBar when pressed.
/// The [width] is also optional and defaults to 400.0.
void showSnackBar(BuildContext context, Widget content, {String? actionLabel, double width = 400.0}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      width: width,
      content: content,
      action: actionLabel != null
          ? SnackBarAction(
              label: actionLabel,
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
            )
          : null,
    ),
  );
}

extension SnackbarContextX on BuildContext {
  /// Shows a SnackBar with the provided [content] and [actionLabel].
  ///
  /// The [actionLabel] is optional. If provided, it will show a button with the label that hides the SnackBar when pressed.
  /// The [width] is also optional and defaults to 400.0.
  void showSnackBar(Widget content, {SnackBarAction? action, double? width, duration = const Duration(seconds: 3)}) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        width: width,
        content: content,
        action: action,
        // margin: EdgeInsets.all(20),
        duration: duration,
      ),
    );
  }

  // error snack bar
  void showErrorSnackBar(Widget content, {SnackBarAction? action, double? width, Duration duration = const Duration(seconds: 3)}) {
    showSnackBar(
      Row(
        children: [
          const Icon(Icons.error, color: Colors.red),
          const SizedBox(width: 16),
          Expanded(
            child: DefaultTextStyle(
              style: Theme.of(this).textTheme.labelMedium!.copyWith(color: Colors.red),
              child: content,
            ),
          ),
        ],
      ),
      action: action,
      width: width,
      duration: duration,
    );
  }

  // success snack bar
  void showSuccessSnackBar(Widget content, {SnackBarAction? action, double? width, Duration duration = const Duration(seconds: 3)}) {
    showSnackBar(
      Row(
        children: [
          const Icon(Icons.check, color: Colors.green),
          const SizedBox(width: 16),
          Expanded(
            child: DefaultTextStyle(
              style: Theme.of(this).textTheme.labelMedium!.copyWith(color: Colors.green),
              child: content,
            ),
          ),
        ],
      ),
      action: action,
      width: width,
      duration: duration,
    );
  }

  // info snack bar
  void showInfoSnackBar(Widget content, {SnackBarAction? action, double? width, Duration duration = const Duration(seconds: 3)}) {
    showSnackBar(
      Row(
        children: [
          const Icon(Icons.info, color: Colors.blue),
          const SizedBox(width: 16),
          Expanded(
            child: DefaultTextStyle(
              style: Theme.of(this).textTheme.labelMedium!.copyWith(color: Colors.blue),
              child: content,
            ),
          ),
        ],
      ),
      action: action,
      width: width,
      duration: duration,
    );
  }

  // warning snack bar
  void showWarningSnackBar(Widget content, {SnackBarAction? action, double? width, Duration duration = const Duration(seconds: 3)}) {
    showSnackBar(
      Row(
        children: [
          const Icon(Icons.warning, color: Colors.orange),
          const SizedBox(width: 16),
          Expanded(
            child: DefaultTextStyle(
              style: Theme.of(this).textTheme.labelMedium!.copyWith(color: Colors.orange),
              child: content,
            ),
          ),
        ],
      ),
      action: action,
      width: width,
      duration: duration,
    );
  }

  // loading snack bar
  void showLoadingSnackBar(Widget content, {SnackBarAction? action, double? width, Duration duration = const Duration(seconds: 3)}) {
    showSnackBar(
      Row(
        children: [
          const SizedBox.square(
              dimension: 25,
              child: CircularProgressIndicator(
                strokeWidth: 2,
              )),
          const SizedBox(width: 16),
          content,
        ],
      ),
      action: action,
      width: width,
      duration: duration,
    );
  }

  // dailogs
  void showIconDialog({
    Widget? icon,
    Widget? title,
    Widget? content,
    List<Widget>? actions,
    Color? backgroundColor,
    Color? textColor,
    EdgeInsetsGeometry padding = const EdgeInsets.all(24),
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    showDialog(
      context: this,
      useRootNavigator: false,
      builder: (context) {
        // return Dialog(elevation: 0, backgroundColor: Colors.transparent, child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 300), child: AlertCard.error(title: Text("regerger"))));
        return Dialog(
          backgroundColor: backgroundColor,
          // title: title,
          // content: content,
          // actions: [
          //   ...?actions,
          // ],
          child: Padding(
            padding: padding,
            child: DefaultTextStyle(
              style: Theme.of(this).textTheme.labelMedium!.copyWith(color: textColor),
              child: IntrinsicWidth(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: crossAxisAlignment,
                  children: [
                    if (icon != null) ...[
                      IconTheme(data: IconThemeData(color: textColor ?? Theme.of(context).colorScheme.onBackground, size: 40), child: icon),
                      const SizedBox(height: 8),
                    ],
                    if (title != null)
                      DefaultTextStyle(
                        style: Theme.of(this).textTheme.displayLarge!.copyWith(color: textColor, fontSize: 22),
                        child: title,
                      ),
                    if (content != null) content,
                    if (actions != null) ...[
                      const SizedBox(height: 24),
                      OverflowBar(
                        alignment: MainAxisAlignment.end,
                        overflowAlignment: OverflowBarAlignment.end,
                        overflowDirection: VerticalDirection.down,
                        overflowSpacing: 0,
                        children: [
                          ...actions,
                        ],
                      )
                    ]
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void showErrorAlertDialog({
    required Widget content,
    List<Widget>? actions,
  }) {
    showIconDialog(
      title: Row(
        children: [
          const Icon(Icons.error, color: Colors.red),
          const SizedBox(width: 16),
          Text('Error', style: Theme.of(this).textTheme.headlineMedium!.copyWith(color: Colors.red)),
        ],
      ),
      content: content,
      actions: actions,
    );
  }

  // success
  void showSuccessAlertDialog({
    required Widget content,
    List<Widget>? actions,
  }) {
    showIconDialog(
      title: Row(
        children: [
          const Icon(Icons.done, color: Colors.green),
          const SizedBox(width: 16),
          Text('Done', style: Theme.of(this).textTheme.headlineMedium!.copyWith(color: Colors.green)),
        ],
      ),
      content: content,
      actions: actions,
    );
  }

  /// showConfirmDialog
  void showConfirmDialog({
    required Widget content,
    required VoidCallback onConfirm,
    VoidCallback? onCancel,
    Widget? label,
  }) {
    showIconDialog(
      title: Row(
        children: [
          const Icon(Icons.warning, color: Colors.orange),
          const SizedBox(width: 16),
          Text(t.general.confirm, style: Theme.of(this).textTheme.headlineMedium!.copyWith(color: Colors.orange)),
        ],
      ),
      content: content,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(this).pop();
            if (onCancel != null) onCancel();
          },
          child: Text(t.general.cancel),
        ),
        FilledButton(
          onPressed: () {
            Navigator.of(this).pop();
            onConfirm();
          },
          child: label ?? Text(t.general.confirm),
        ),
      ],
    );
  }
}




// yuoutube utils
String? getYoutubeVideoIdFromUrl(String url) {
  final RegExp videoRegExp = RegExp(
    r'(?:https?:\/\/)?(?:www\.)?(?:youtube\.com\/(?:[^\/\n\s]+\/\S+\/|(?:v|e(?:mbed)?|watch)\/|.*[?&]v=)|youtu\.be\/)([a-zA-Z0-9_-]{11})',
    caseSensitive: false,
  );

  final RegExp thumbRegExp = RegExp(
    r'https:\/\/img\.youtube\.com\/vi\/([a-zA-Z0-9_-]{11})\/',
    caseSensitive: false,
  );

  // Check if it's a regular YouTube video URL
  Match? match = videoRegExp.firstMatch(url);
  if (match != null && match.groupCount >= 1) {
    return match.group(1);
  }

  // Check if it's a YouTube thumbnail URL
  match = thumbRegExp.firstMatch(url);
  if (match != null && match.groupCount >= 1) {
    return match.group(1);
  }

  // Return null if no video ID is found
  return null;
}