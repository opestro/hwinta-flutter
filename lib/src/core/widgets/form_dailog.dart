// FormDailog
import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/core/widgets/alerts.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/src/core/enums.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class FormDailog extends StatefulWidget {
  final Widget? title;
  final bool frame;
  final String? initialValue;
  final Widget Function(BuildContext, FeeefValidationException?) builder;
  final Function() onSubmitted;
  final Widget Function(BuildContext context, Function() onSubmitted)? actionBuilder;
  final Widget? actionText;
  final Widget? actionIcon;
  const FormDailog({
    super.key,
    required this.builder,
    this.frame = true,
    required this.onSubmitted,
    this.initialValue,
    this.title,
    this.actionBuilder,
    this.actionText,
    this.actionIcon,
  });

  @override
  State<FormDailog> createState() => _FormDailogState();
}

class _FormDailogState extends State<FormDailog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FutureStatus status = FutureStatus.initial;
  FeeefValidationException? error;

  void _submit() async {
    if (_formKey.currentState!.validate() && status != FutureStatus.inProgress) {
      setState(() {
        status = FutureStatus.inProgress;
      });
      try {
        // await Future.delayed(const Duration(seconds: 1));
        await widget.onSubmitted();
        if (mounted && Navigator.of(context).canPop()) Navigator.of(context).pop();
      } on FeeefValidationException catch (e) {
        error = e;
        status = FutureStatus.error;
      } catch (e) {
        error = FeeefValidationException(errors: [
          FeeefViolation(message: "Something went wrong, please try again.")
        ]);
        status = FutureStatus.error;
      } finally {
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final content = SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (error != null) ...[
            AlertCard.error(
              title: error is FeeefValidationException ? Text((error as FeeefValidationException).messages.join("\n")) : Text(error.toString()),
            ),
            const SizedBox(height: 8),
          ],
          widget.builder(context, error),
        ],
      ),
    );

    final actions = <Widget>[
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text(t.general.cancel),
      ),
      if (widget.actionBuilder != null)
        widget.actionBuilder!(context, _submit)
      else
        FilledButton.tonalIcon(
          onPressed: _submit,
          label: widget.actionText ?? Text(t.general.save),
          icon: status == FutureStatus.inProgress
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                )
              : widget.actionIcon ?? const Icon(Ionicons.cloud_upload),
        ),
    ];
    return Form(
      key: _formKey,
      child: widget.frame
          ? AlertDialog(
              contentPadding: const EdgeInsets.all(24),
              title: widget.title,
              content: content,
              actions: actions,
            )
          : Column(
              children: [
                if (widget.title != null) widget.title!,
                content,
                Row(
                  children: actions,
                )
              ],
            ),
    );
  }
}
