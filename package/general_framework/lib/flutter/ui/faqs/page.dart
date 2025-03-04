/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: use_build_context_synchronously, implementation_imports, empty_catches

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
class FaqsGeneralFrameworkPage extends StatefulWidget {
  /// UncompleteDocumentation
  final FutureOr<FaqGeneralFrameworkOptions> Function(BuildContext context) onFaqs;

  /// UncompleteDocumentation
  const FaqsGeneralFrameworkPage({
    super.key,
    required this.onFaqs,
  });

  @override
  State<FaqsGeneralFrameworkPage> createState() => _FaqsGeneralFrameworkPageState();
}

class _TickerProviderEmpty extends TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}

class _FaqsGeneralFrameworkPageState extends State<FaqsGeneralFrameworkPage> with TickerProviderStateMixin {
  TabController tabController = TabController(length: 1, vsync: _TickerProviderEmpty());
  int tabIndex = 0;
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
    tabController.dispose();
    faqGeneralFrameworkOptions.faqs.clear();
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
      tabIndex = 0;
      faqGeneralFrameworkOptions.faqs.clear();
      tabController.dispose();
    });
    await Future(() async {
      faqGeneralFrameworkOptions = await widget.onFaqs(context);
      tabController = TabController(length: faqGeneralFrameworkOptions.faqs.length, vsync: this);
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
                if (isLoading == false) ...[
                  if (faqGeneralFrameworkOptions.faqs.isNotEmpty) ...[
                    TabbarGeneralFrameworkWidget(
                      controller: tabController,
                      tabAlignment: TabAlignment.start,
                      onTap: (index) {
                        setState(() {
                          tabIndex = index;
                        });
                      },
                      tabs: [
                        for (int i = 0; i < faqGeneralFrameworkOptions.faqs.length; i++) ...[
                          () {
                            final e = faqGeneralFrameworkOptions.faqs[i];
                            return Text(
                              e.title,
                              style: (i == tabIndex) ? context.theme.textTheme.titleSmall : context.theme.textTheme.bodySmall,
                            );
                          }(),
                        ],
                      ],
                    ),
                    for (final FaqGeneralFrameworkSubData element in () {
                      try {
                        return faqGeneralFrameworkOptions.faqs[tabIndex].data;
                      } catch (e) {}
                      return <FaqGeneralFrameworkSubData>[];
                    }()) ...[
                      FaqGeneralFrameworkWidget(
                        faq: element,
                        margin: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                      ),
                    ],
                  ],
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
