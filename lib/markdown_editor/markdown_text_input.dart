import 'package:expandable/expandable.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'format_markdown.dart';

/// Widget with markdown buttons
class MarkdownTextInput extends StatefulWidget {
  /// Callback called when text changed
  final Function onTextChanged;

  /// Initial value you want to display
  final String initialValue;

  /// Validator for the TextFormField
  final String? Function(String? value)? validators;

  /// String displayed at hintText in TextFormField
  final String? label;

  /// Change the text direction of the input (RTL / LTR)
  final TextDirection textDirection;

  /// The maximum of lines that can be display in the input
  final int? maxLines;

  /// List of action the component can handle
  final List<MarkdownType> actions;

  /// Optional controller to manage the input
  final TextEditingController? controller;

  /// Overrides input text style
  final TextStyle? textStyle;

  /// Constructor for [MarkdownTextInput]
  MarkdownTextInput(
    this.onTextChanged,
    this.initialValue, {
    this.label = '',
    this.validators,
    this.textDirection = TextDirection.ltr,
    this.maxLines,
    this.actions = const [
      MarkdownType.bold,
      MarkdownType.italic,
      MarkdownType.title,
      MarkdownType.link,
      MarkdownType.list
    ],
    this.textStyle,
    this.controller,
  });

  @override
  _MarkdownTextInputState createState() => _MarkdownTextInputState(controller ?? TextEditingController());
}

class _MarkdownTextInputState extends State<MarkdownTextInput> with SingleTickerProviderStateMixin {
  final TextEditingController _controller;
  TextSelection textSelection = const TextSelection(baseOffset: 0, extentOffset: 0);
  FocusNode focusNode = FocusNode();

  _MarkdownTextInputState(this._controller);

  void onTap(BuildContext context, MarkdownType type, {int titleSize = 1}) async {
    final basePosition = textSelection.baseOffset;
    var noTextSelected = (textSelection.baseOffset - textSelection.extentOffset) == 0;

    final result = await FormatMarkdown.convertToMarkdown(context, type, _controller.text, textSelection.baseOffset, textSelection.extentOffset, titleSize: titleSize);
    if (result == null) return;
    _controller.value = _controller.value.copyWith(text: result.data, selection: TextSelection.collapsed(offset: basePosition + result.cursorIndex));

    if (noTextSelected) {
      _controller.selection = TextSelection.collapsed(offset: _controller.selection.end - result.replaceCursorIndex);
      focusNode.requestFocus();
    }
  }

  @override
  void initState() {
    _controller.text = widget.initialValue;
    _controller.addListener(() {
      if (_controller.selection.baseOffset != -1) textSelection = _controller.selection;
      widget.onTextChanged(_controller.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  late final _tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: <Widget>[
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.edit),
                text: (t.general.edit),
              ),
              Tab(
                icon: Icon(Icons.preview),
                text: (t.general.preview),
              ),
            ],
          ),
          ListenableBuilder(
              listenable: _tabController,
              builder: (context, snapshot) {
                return Builder(builder: (context) {
                  return [
                    Column(
                      children: [
                        TextFormField(
                          focusNode: focusNode,
                          textInputAction: TextInputAction.newline,
                          maxLines: widget.maxLines,
                          controller: _controller,
                          textCapitalization: TextCapitalization.sentences,
                          validator: widget.validators != null ? (value) => widget.validators!(value) : null,
                          style:
                              // use mono space font
                              GoogleFonts.robotoMono(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                          cursorColor: Theme.of(context).primaryColor,
                          // textDirection: widget.textDirection,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)),
                            hintText: widget.label,
                            contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                          ),
                        ),
                        SizedBox(
                          height: 44,
                          child: Material(
                            color: Theme.of(context).cardColor,
                            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: widget.actions.map((type) {
                                return type == MarkdownType.title
                                    ? ExpandableNotifier(
                                        child: Expandable(
                                          key: Key('H#_button'),
                                          collapsed: ExpandableButton(
                                            child: const Center(
                                              child: Padding(
                                                padding: EdgeInsets.all(10),
                                                child: Text(
                                                  'H#',
                                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                                                ),
                                              ),
                                            ),
                                          ),
                                          expanded: Container(
                                            color: Colors.white10,
                                            child: Row(
                                              children: [
                                                for (int i = 1; i <= 6; i++)
                                                  InkWell(
                                                    key: Key('H${i}_button'),
                                                    onTap: () => onTap(context, MarkdownType.title, titleSize: i),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(10),
                                                      child: Text(
                                                        'H$i',
                                                        style: TextStyle(fontSize: (18 - i).toDouble(), fontWeight: FontWeight.w700),
                                                      ),
                                                    ),
                                                  ),
                                                ExpandableButton(
                                                  child: const Padding(
                                                    padding: EdgeInsets.all(10),
                                                    child: Icon(
                                                      Icons.close,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    : InkWell(
                                        key: Key(type.key),
                                        onTap: () => onTap(context, type),
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Icon(type.icon),
                                        ),
                                      );
                              }).toList(),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: MarkdownBody(
                        shrinkWrap: true,
                        data: _controller.text,
                      ),
                    ),
                  ].elementAt(
                    _tabController.index,
                  );
                });
              })
        ],
      ),
    );
  }
}
