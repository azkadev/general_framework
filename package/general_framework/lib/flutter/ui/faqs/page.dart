// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import "core.dart";
import "widget.dart";
class FaqsGeneralFrameworkPage extends StatefulWidget {
  final FutureOr<FaqGeneralFrameworkOptions> Function(BuildContext context) onFaqs;
  const FaqsGeneralFrameworkPage({
    super.key,
    required this.onFaqs,
  });

  @override
  State<FaqsGeneralFrameworkPage> createState() => _FaqsGeneralFrameworkPageState();
}

class _FaqsGeneralFrameworkPageState extends State<FaqsGeneralFrameworkPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      refresh();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  FaqGeneralFrameworkOptions faqGeneralFrameworkOptions = FaqGeneralFrameworkOptions.empty();

  bool isLoading = false;
  Future<void> refresh() async {
    if (isLoading) {
      return;
    }
    setState(() {
      isLoading = true;
      faqGeneralFrameworkOptions.faqs.clear();
    });
    await Future(() async {
      faqGeneralFrameworkOptions = await widget.onFaqs(context);
    });
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.primaryColor,
        leading: () {
          final child = BackButton(
            color: context.theme.indicatorColor,
          );
          if (isLoading) {
            return SkeletonizerGeneralFramework(
              enabled: isLoading,
              child: child,
            );
          }
          return child;
        }(),
        centerTitle: true,
        title: () {
          final child = Text(
            "Faqs",
            style: context.theme.textTheme.titleLarge,
          );
          if (isLoading) {
            return SkeletonizerGeneralFramework(
              enabled: isLoading,
              child: child,
            );
          }
          return child;
        }(),
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: context.height, minWidth: context.width),
            child: Column(
              children: [
                for (final element in faqGeneralFrameworkOptions.faqs) ...[
                  FaqGeneralFrameworkWidget(
                    faq: element,
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
