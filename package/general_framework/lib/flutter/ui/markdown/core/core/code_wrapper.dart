import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// UncompleteDocumentation
class CodeWrapperWidget extends StatefulWidget {
  /// UncompleteDocumentation
  final Widget child;

  /// UncompleteDocumentation
  final String text;

  /// UncompleteDocumentation
  final String language;

  /// UncompleteDocumentation
  const CodeWrapperWidget({
    super.key,
    required this.child,
    required this.text,
    required this.language,
  });
  @override
  State<CodeWrapperWidget> createState() => _PreWrapperState();
}

class _PreWrapperState extends State<CodeWrapperWidget> {
  late Widget _switchWidget;
  bool hasCopied = false;

  @override
  void initState() {
    super.initState();
    _switchWidget = Icon(
      Icons.copy_rounded,
      key: UniqueKey(),
      color: Colors.white,
      size: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Theme.of(context).brightness;

    return Stack(
      children: [
        widget.child,
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: _switchWidget,
              ),
              onTap: () async {
                if (hasCopied) return;
                await Clipboard.setData(ClipboardData(text: widget.text));
                _switchWidget = Icon(
                  Icons.check,
                  key: UniqueKey(),
                  color: Colors.white,
                );
                refresh();
                Future.delayed(const Duration(seconds: 2), () {
                  hasCopied = false;
                  _switchWidget = Icon(
                    Icons.copy_rounded,
                    key: UniqueKey(),
                    color: Colors.white,
                    size: 20,
                  );
                  refresh();
                });
              },
            ),
          ),
        )
      ],
    );
  }

  void refresh() {
    if (mounted) setState(() {});
  }
}
