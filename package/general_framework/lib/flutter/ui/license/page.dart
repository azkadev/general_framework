// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:developer' show Flow, Timeline;
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart' hide Flow;
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// The amount of vertical space to separate chunks of text.

/// A page that shows licenses for software used by the application.
///
/// To show a [LicenseGeneralFrameworkPage], use [showLicenseGeneralFrameworkPage].
///
/// The [AboutDialog] shown by [showAboutDialog] and [ AboutListTileGeneral] includes
/// a button that calls [showLicenseGeneralFrameworkPage].
///
/// The licenses shown on the [LicenseGeneralFrameworkPage] are those returned by the
/// [LicenseRegistry] API, which can be used to add more licenses to the list.
class LicenseGeneralFrameworkPage extends StatefulWidget {
  /// The name of the application.
  ///
  /// Defaults to the value of [Title.title], if a [Title] widget can be found.
  /// Otherwise, defaults to [Platform.resolvedExecutable].
  final String? applicationName;

  /// The version of this build of the application.
  ///
  /// This string is shown under the application name.
  ///
  /// Defaults to the empty string.
  final String? applicationVersion;

  /// The icon to show below the application name.
  ///
  /// By default no icon is shown.
  ///
  /// Typically this will be an [ImageIcon] widget. It should honor the
  /// [IconTheme]'s [IconThemeData.size].
  final Widget? applicationIcon;

  /// A string to show in small print.
  ///
  /// Typically this is a copyright notice.
  ///
  /// Defaults to the empty string.
  final String? applicationLegalese;

  final String poweredBy;

  /// Creates a page that shows licenses for software used by the application.
  ///
  /// The arguments are all optional. The application name, if omitted, will be
  /// derived from the nearest [Title] widget. The version and legalese values
  /// default to the empty string.
  ///
  /// The licenses shown on the [LicenseGeneralFrameworkPage] are those returned by the
  /// [LicenseRegistry] API, which can be used to add more licenses to the list.
  const LicenseGeneralFrameworkPage({
    super.key,
    required this.poweredBy,
    this.applicationName,
    this.applicationVersion,
    this.applicationIcon,
    this.applicationLegalese,
  });

  @override
  State<LicenseGeneralFrameworkPage> createState() => _LicenseGeneralFrameworkPageState();

  static Future<T?> show<T>({
    required BuildContext context,
    required String poweredBy,
    String? applicationName,
    String? applicationVersion,
    Widget? applicationIcon,
    String? applicationLegalese,
  }) {
    return context.navigator().push<T>(MaterialPageRoute(
      builder: (context) {
        return LicenseGeneralFrameworkPage(
          poweredBy: poweredBy,
          applicationName: applicationName,
          applicationVersion: applicationVersion,
          applicationIcon: applicationIcon,
          applicationLegalese: applicationLegalese,
        );
      },
    ));
  }
}

class _LicenseGeneralFrameworkPageState extends State<LicenseGeneralFrameworkPage> {
  final LicenseDetailData license_detail_data = LicenseDetailData();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      refresh();
    });
  }

  @override
  void dispose() {
    license_detail_data.dispose();
    super.dispose();
  }

  bool is_loading = false;

  Future<void> refresh() async {
    if (is_loading) {
      return;
    }
    setState(() {
      is_loading = true;
    });
    await Future(() async {
      await license_detail_data.refresh();
      // license_detail_data = await LicenseDetailData.init();
    });
    setState(() {
      is_loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MasterDetailFlowWidget(
      detailPageFABlessGutterWidth: _getGutterSize(context),
      title: Text(MaterialLocalizations.of(context).licensesPageTitle),
      detailPageBuilder: packagesLandscapeView,
      masterViewBuilder: packagesPotraitView,
    );
  }

  Widget packagesLandscapeView(BuildContext _, Object? args, ScrollController? scrollController) {
    assert(args is _DetailArguments);
    final _DetailArguments detailArguments = args! as _DetailArguments;
    return PackageLicenseLandscapeGeneralUiPage(
      packageName: detailArguments.packageName,
      licenseEntries: detailArguments.licenseEntries,
      scrollController: scrollController,
    );
  }

  Widget packagesPotraitView(final BuildContext _, final bool isLandscape) {
    final Widget about = LicenseAuthorGeneralFrameworkWidget(
      name: widget.applicationName ?? _defaultApplicationName(context),
      icon: widget.applicationIcon ?? _defaultApplicationIcon(context),
      version: widget.applicationVersion ?? _defaultApplicationVersion(context),
      legalese: widget.applicationLegalese,
      poweredBy: widget.poweredBy,
    );

    if (is_loading) {
      return SingleChildScrollView(
        child: Column(
          children: [
            about,
            const Center(child: CircularProgressIndicator()),
          ],
        ),
      );
    }
    return ListenableBuilder(
      listenable: license_detail_data,
      builder: (context, child) {
        return RefreshIndicator(
          onRefresh: refresh,
          edgeOffset: context.mediaQueryData.padding.top,
          color: context.theme.indicatorColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                about,
                for (var index = 0; index < license_detail_data.packages.length; index++) ...[
                  () {
                    final String packageName = license_detail_data.packages[index];
                    final List<int> bindings = license_detail_data.packageLicenseBindings[packageName]!;
                    final bool isSelected = isLandscape && index == (license_detail_data.current_selected_package_index ?? 0);
                    return Ink(
                      color: (isSelected) ? context.theme.highlightColor : null,
                      child: ListTile(
                        title: Text(
                          packageName,
                          style: TextStyle(
                            color: context.theme.indicatorColor,
                            fontSize: (isSelected) ? 20 : 15,
                          ),
                        ),
                        subtitle: Text(
                          MaterialLocalizations.of(context).licensesPackageDetailText(bindings.length),
                          style: TextStyle(
                            color: context.theme.indicatorColor,
                            fontSize: (isSelected) ? 15 : 10,
                          ),
                        ),
                        onTap: () {
                          license_detail_data.setindex(index);
                          // selectedId.value = index;
                          // license_detail_data;
                          MasterDetailFlowWidget.of(context).openDetailPage(_DetailArguments(
                            packageName,
                            bindings.map((int i) => license_detail_data.licenses[i]).toList(growable: false),
                          ));
                        },
                      ),
                    );
                  }(),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}

class LicenseAuthorGeneralFrameworkWidget extends StatelessWidget {
  final String name;
  final String version;
  final Widget? icon;
  final String? legalese;

  final String poweredBy;
  const LicenseAuthorGeneralFrameworkWidget({
    super.key,
    required this.name,
    required this.version,
    required this.poweredBy,
    this.icon,
    this.legalese,
  });

  static const double _textVerticalSeparation = 18.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _getGutterSize(context),
        vertical: 24.0,
      ),
      child: Column(
        children: <Widget>[
          if (icon != null) ...[
            IconTheme(
              data: Theme.of(context).iconTheme,
              child: icon!,
            ),
            const SizedBox(height: _textVerticalSeparation),
          ],
          Text(
            name,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          if (version != '') ...[
            Padding(
              padding: const EdgeInsets.only(bottom: _textVerticalSeparation),
              child: Text(
                version,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ],
          if (legalese != null && legalese != '') ...[
            Text(
              legalese!,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
          const SizedBox(height: _textVerticalSeparation),
          Text(
            poweredBy.trim(),
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

/// This is a collection of licenses and the packages to which they apply.
/// [packageLicenseBindings] records the m+:n+ relationship between the license
/// and packages as a map of package names to license indexes.
class LicenseDetailData extends ChangeNotifier {
  final List<LicenseEntry> licenses = <LicenseEntry>[];
  final Map<String, List<int>> packageLicenseBindings = <String, List<int>>{};
  final List<String> packages = <String>[];
  int? current_selected_package_index;
  // Special treatment for the first package since it should be the package
  // for delivered application.
  // String? firstPackage;

  Future<void> refresh() async {
    current_selected_package_index = 0;
    licenses.clear();
    packageLicenseBindings.clear();
    packages.clear();
    await for (var element in LicenseRegistry.licenses) {
      await Future.delayed(const Duration(microseconds: 1));
      await addLicense(element);
    }
    sortPackages();
    notifyListeners();
  }

  void setindex(int index) {
    current_selected_package_index = index;
    notifyListeners();
  }

  Future<void> addLicense(LicenseEntry entry) async {
    // Before the license can be added, we must first record the packages to
    // which it belongs.
    for (final String package in entry.packages) {
      await Future.delayed(const Duration(microseconds: 1));
      _addPackage(package);
      // Bind this license to the package using the next index value. This
      // creates a contract that this license must be inserted at this same
      // index value.
      packageLicenseBindings[package]!.add(licenses.length);
    }
    licenses.add(entry); // Completion of the contract above.
  }

  /// Add a package and initialize package license binding. This is a no-op if
  /// the package has been seen before.
  void _addPackage(String package) {
    if (!packageLicenseBindings.containsKey(package)) {
      packageLicenseBindings[package] = <int>[];
      // firstPackage ??= package;
      packages.add(package);
    }
  }

  /// Sort the packages using some comparison method, or by the default manner,
  /// which is to put the application package first, followed by every other
  /// package in case-insensitive alphabetical order.
  void sortPackages() {
    packages.sort();
  }
}

@immutable
class _DetailArguments {
  const _DetailArguments(this.packageName, this.licenseEntries);

  final String packageName;
  final List<LicenseEntry> licenseEntries;

  @override
  bool operator ==(final Object other) {
    if (other is _DetailArguments) {
      return other.packageName == packageName;
    }
    return other == this;
  }

  @override
  int get hashCode => Object.hash(packageName, Object.hashAll(licenseEntries));
}

class PackageLicenseLandscapeGeneralUiPage extends StatefulWidget {
  const PackageLicenseLandscapeGeneralUiPage({
    super.key,
    required this.packageName,
    required this.licenseEntries,
    required this.scrollController,
  });

  final String packageName;
  final List<LicenseEntry> licenseEntries;
  final ScrollController? scrollController;

  @override
  PackageLicenseLandscapeGeneralUiPageState createState() => PackageLicenseLandscapeGeneralUiPageState();
}

class PackageLicenseLandscapeGeneralUiPageState extends State<PackageLicenseLandscapeGeneralUiPage> {
  @override
  void initState() {
    super.initState();
    _initLicenses();
  }

  final List<Widget> _licenses = <Widget>[];
  bool _loaded = false;

  Future<void> _initLicenses() async {
    int debugFlowId = -1;
    assert(() {
      final Flow flow = Flow.begin();
      Timeline.timeSync('_initLicenses()', () {}, flow: flow);
      debugFlowId = flow.id;
      return true;
    }());
    for (final LicenseEntry license in widget.licenseEntries) {
      if (!mounted) {
        return;
      }
      assert(() {
        Timeline.timeSync('_initLicenses()', () {}, flow: Flow.step(debugFlowId));
        return true;
      }());
      final List<LicenseParagraph> paragraphs = await SchedulerBinding.instance.scheduleTask<List<LicenseParagraph>>(
        license.paragraphs.toList,
        Priority.animation,
        debugLabel: 'License',
      );
      if (!mounted) {
        return;
      }
      setState(() {
        _licenses.add(const Padding(
          padding: EdgeInsets.all(18.0),
          child: Divider(),
        ));
        for (final LicenseParagraph paragraph in paragraphs) {
          if (paragraph.indent == LicenseParagraph.centeredIndent) {
            _licenses.add(Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                paragraph.text,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ));
          } else {
            assert(paragraph.indent >= 0);
            _licenses.add(Padding(
              padding: EdgeInsetsDirectional.only(top: 8.0, start: 16.0 * paragraph.indent),
              child: Text(paragraph.text),
            ));
          }
        }
      });
    }
    setState(() {
      _loaded = true;
    });
    assert(() {
      Timeline.timeSync('Build scheduled', () {}, flow: Flow.end(debugFlowId));
      return true;
    }());
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);
    final ThemeData theme = context.theme;
    final String title = widget.packageName;
    final String subtitle = localizations.licensesPackageDetailText(widget.licenseEntries.length);
    final double pad = _getGutterSize(context);
    final EdgeInsets padding = EdgeInsets.only(left: pad, right: pad, bottom: pad);
    final List<Widget> listWidgets = <Widget>[
      ..._licenses,
      if (!_loaded)
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
    ];

    final Widget page;

    if (widget.scrollController == null) {
      page = Scaffold(
        appBar: AppBar(
          backgroundColor: context.theme.primaryColor,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              context.navigator().pop();
            },
            padding: const EdgeInsets.all(15),
            icon: Icon(
              Icons.arrow_back,
              shadows: [
                BoxShadow(
                  color: context.theme.shadowColor.withAlpha(110),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
          ),
          title: PackageLicenseLandscapeGeneralUiPageTitle(
            title: title,
            subtitle: subtitle,
            theme: theme.useMaterial3 ? theme.textTheme : theme.primaryTextTheme,
            titleTextStyle: theme.appBarTheme.titleTextStyle,
          ),
        ),
        body: Center(
          child: Material(
            color: theme.scaffoldBackgroundColor,
            elevation: 4.0,
            child: Container(
              constraints: BoxConstraints.loose(const Size.fromWidth(600.0)),
              child: Localizations.override(
                locale: const Locale('en', 'US'),
                context: context,
                child: ScrollConfiguration(
                  // A Scrollbar is built-in below.
                  behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                  child: Scrollbar(
                    child: ListView(
                      primary: true,
                      padding: padding,
                      children: listWidgets,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      page = CustomScrollView(
        controller: widget.scrollController,
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            centerTitle: true,
            backgroundColor: theme.primaryColor, 
            title: PackageLicenseLandscapeGeneralUiPageTitle(
              title: title,
              subtitle: subtitle,
              theme: theme.textTheme,
              titleTextStyle: theme.textTheme.titleLarge,
            ),
          ),
          SliverPadding(
            padding: padding,
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) => Localizations.override(
                  locale: const Locale('en', 'US'),
                  context: context,
                  child: listWidgets[index],
                ),
                childCount: listWidgets.length,
              ),
            ),
          ),
        ],
      );
    }
    return DefaultTextStyle(
      style: theme.textTheme.bodySmall!,
      child: page,
    );
  }
}

class PackageLicenseLandscapeGeneralUiPageTitle extends StatelessWidget {
  const PackageLicenseLandscapeGeneralUiPageTitle({
    // ignore: unused_element
    super.key,
    required this.title,
    required this.subtitle,
    required this.theme,
    this.titleTextStyle,
    // ignore: unused_element
    this.foregroundColor,
  });

  final String title;
  final String subtitle;
  final TextTheme theme;
  final TextStyle? titleTextStyle;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final TextStyle? effectiveTitleTextStyle = titleTextStyle ?? theme.titleLarge;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: effectiveTitleTextStyle?.copyWith(color: foregroundColor)),
        Text(subtitle, style: theme.titleSmall?.copyWith(color: foregroundColor)),
      ],
    );
  }
}

String _defaultApplicationName(BuildContext context) {
  // This doesn't handle the case of the application's title dynamically
  // changing. In theory, we should make Title expose the current application
  // title using an InheritedWidget, and so forth. However, in practice, if
  // someone really wants their application title to change dynamically, they
  // can provide an explicit applicationName to the widgets defined in this
  // file, instead of relying on the default.
  final Title? ancestorTitle = context.findAncestorWidgetOfExactType<Title>();
  return ancestorTitle?.title ?? Platform.resolvedExecutable.split(Platform.pathSeparator).last;
}

String _defaultApplicationVersion(BuildContext context) {
  // TODO(ianh): Get this from the embedder somehow.
  return '';
}

Widget? _defaultApplicationIcon(BuildContext context) {
  // TODO(ianh): Get this from the embedder somehow.
  return null;
}

const int _materialGutterThreshold = 720;
const double _wideGutterSize = 24.0;
const double _narrowGutterSize = 12.0;

double _getGutterSize(BuildContext context) => MediaQuery.sizeOf(context).width >= _materialGutterThreshold ? _wideGutterSize : _narrowGutterSize;

/// Signature for the builder callback used by [MasterDetailFlowWidget].
typedef MasterViewBuilderWidget = Widget Function(BuildContext context, bool isLandscapeUI);

/// Signature for the builder callback used by [MasterDetailFlowWidget.detailPageBuilder].
///
/// scrollController is provided when the page destination is the draggable
/// sheet in the lateral UI. Otherwise, it is null.
typedef DetailPageBuilderWidget = Widget Function(BuildContext context, Object? arguments, ScrollController? scrollController);

/// Signature for the builder callback used by [MasterDetailFlowWidget.actionBuilder].
///
/// Builds the actions that go in the app bars constructed for the master and
/// lateral UI pages. actionLevel indicates the intended destination of the
/// return actions.
typedef ActionBuilderWidget = List<Widget> Function(BuildContext context, ActionLevelType actionLevel);

/// Describes which type of app bar the actions are intended for.
enum ActionLevelType {
  /// Indicates the top app bar in the lateral UI.
  top,

  /// Indicates the master view app bar in the lateral UI.
  view,
}

const String _navMaster = 'master';
const String _navDetail = 'detail';

enum FocusLicenseType { master, detail }

/// A Master Detail Flow widget. Depending on screen width it builds either a
/// lateral or nested navigation flow between a master view and a detail page.
/// bloc pattern.
///
/// If focus is on detail view, then switching to nested navigation will
/// populate the navigation history with the master page and the detail page on
/// top. Otherwise the focus is on the master view and just the master page
/// is shown.
class MasterDetailFlowWidget extends StatefulWidget {
  /// Builder for the master view for lateral navigation.
  ///
  /// If [masterPageBuilder] is not supplied the master page required for nested navigation, also
  /// builds the master view inside a [Scaffold] with an [AppBar].
  final MasterViewBuilderWidget masterViewBuilder;

  /// Builder for the detail page.
  ///
  /// If scrollController == null, the page is intended for nested navigation. The lateral detail
  /// page is inside a [DraggableScrollableSheet] and should have a scrollable element that uses
  /// the [ScrollController] provided. In fact, it is strongly recommended the entire lateral
  /// page is scrollable.
  final DetailPageBuilderWidget detailPageBuilder;

  /// Override the width of the gutter when there is no floating action button.
  final double? detailPageFABlessGutterWidth;

  /// The title for the lateral UI [AppBar].
  ///
  /// See [AppBar.title].
  final Widget? title;

  /// Creates a master detail navigation flow which is either nested or
  /// lateral depending on screen width.
  const MasterDetailFlowWidget({
    super.key,
    required this.detailPageBuilder,
    required this.masterViewBuilder,
    this.detailPageFABlessGutterWidth,
    this.title,
  });

  @override
  MasterDetailFlowWidgetState createState() => MasterDetailFlowWidgetState();

  // The master detail flow proxy from the closest instance of this class that encloses the given
  // context.
  //
  // Typical usage is as follows:
  //
  // ```dart
  // MasterDetailFlowWidget.of(context).openDetailPage(arguments);
  // ```
  static MasterDetailFlowWidgetProxy of(BuildContext context) {
    _PageOpener? pageOpener = context.findAncestorStateOfType<MasterDetailScaffoldWidgetState>();
    pageOpener ??= context.findAncestorStateOfType<MasterDetailFlowWidgetState>();
    assert(() {
      if (pageOpener == null) {
        throw FlutterError(
          'Master Detail operation requested with a context that does not include a Master Detail '
          'Flow.\nThe context used to open a detail page from the Master Detail Flow must be '
          'that of a widget that is a descendant of a Master Detail Flow widget.',
        );
      }
      return true;
    }());
    return MasterDetailFlowWidgetProxy._(pageOpener!);
  }
}

/// Interface for interacting with the [MasterDetailFlowWidget].
class MasterDetailFlowWidgetProxy implements _PageOpener {
  MasterDetailFlowWidgetProxy._(this._pageOpener);

  final _PageOpener _pageOpener;

  /// Open detail page with arguments.
  @override
  void openDetailPage(Object arguments) => _pageOpener.openDetailPage(arguments);

  /// Set the initial page to be open for the lateral layout. This can be set at any time, but
  /// will have no effect after any calls to openDetailPage.
  @override
  void setInitialDetailPage(Object arguments) => _pageOpener.setInitialDetailPage(arguments);
}

abstract class _PageOpener {
  void openDetailPage(Object arguments);

  void setInitialDetailPage(Object arguments);
}

// const int _materialWideDisplayThreshold = 840;

class MasterDetailFlowWidgetState extends State<MasterDetailFlowWidget> implements _PageOpener {
  /// Tracks whether focus is on the detail or master views. Determines behavior when switching
  /// from lateral to nested navigation.
  FocusLicenseType focus = FocusLicenseType.master;

  /// Cache of arguments passed when opening a detail page. Used when rebuilding.
  Object? _cachedDetailArguments;

  /// Record of the layout that was built.
  // _LayoutMode? _builtLayout;

  /// Key to access navigator in the nested layout.
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void openDetailPage(Object arguments) {
    _cachedDetailArguments = arguments;
    if (context.orientation.isPortrait) {
      _navigatorKey.currentState!.pushNamed(_navDetail, arguments: arguments);
    } else {
      focus = FocusLicenseType.detail;
    }
  }

  @override
  void setInitialDetailPage(Object arguments) {
    _cachedDetailArguments = arguments;
  }

  @override
  Widget build(BuildContext context) {
    if (context.orientation.isLandscape) {
      return landscapeUi(context);
    }
    return potraitUi(context);
  }

  Widget potraitUi(BuildContext context) {
    // _builtLayout = _LayoutMode.nested;
    final MaterialPageRoute<void> masterPageRoute = _masterPageRoute(context);

    return NavigatorPopHandler(
      onPop: () {
        _navigatorKey.currentState!.maybePop();
      },
      child: Navigator(
        key: _navigatorKey,
        initialRoute: 'initial',
        onGenerateInitialRoutes: (NavigatorState navigator, String initialRoute) {
          switch (focus) {
            case FocusLicenseType.master:
              return <Route<void>>[masterPageRoute];
            case FocusLicenseType.detail:
              return <Route<void>>[
                masterPageRoute,
                detailPageRoute(_cachedDetailArguments),
              ];
          }
        },
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case _navMaster:
              // Matching state to navigation event.
              focus = FocusLicenseType.master;
              return masterPageRoute;
            case _navDetail:
              // Matching state to navigation event.
              focus = FocusLicenseType.detail;
              // Cache detail page settings.
              _cachedDetailArguments = settings.arguments;
              return detailPageRoute(_cachedDetailArguments);
            default:
              throw Exception('Unknown route ${settings.name}');
          }
        },
      ),
    );
  }

  MaterialPageRoute<void> _masterPageRoute(BuildContext context) {
    return MaterialPageRoute<dynamic>(
      builder: (BuildContext c) {
        return BlockSemantics(
          child: _MasterPage(
            leading: Navigator.of(context).canPop()
                ? IconButton(
                    onPressed: () {
                      context.navigator().pop();
                    },
                    padding: const EdgeInsets.all(15),
                    icon: Icon(
                      Icons.arrow_back,
                      shadows: [
                        BoxShadow(
                          color: context.theme.shadowColor.withAlpha(110),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                  )
                : null,
            title: widget.title,
            masterViewBuilder: widget.masterViewBuilder,
          ),
        );
      },
    );
  }

  MaterialPageRoute<void> detailPageRoute(Object? arguments) {
    return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
      return PopScope(
        onPopInvoked: (bool didPop) {
          // No need for setState() as rebuild happens on navigation pop.
          focus = FocusLicenseType.master;
        },
        child: BlockSemantics(child: widget.detailPageBuilder(context, arguments, null)),
      );
    });
  }

  Widget landscapeUi(BuildContext context) {
    // _builtLayout = _LayoutMode.lateral;
    return MasterDetailScaffoldWidget(
      actionBuilder: (_, __) => const <Widget>[],
      detailPageBuilder: (BuildContext context, Object? args, ScrollController? scrollController) => widget.detailPageBuilder(context, args ?? _cachedDetailArguments, scrollController),
      detailPageFABlessGutterWidth: widget.detailPageFABlessGutterWidth,
      initialArguments: _cachedDetailArguments,
      masterViewBuilder: (BuildContext context, bool isLandscape) => widget.masterViewBuilder(context, isLandscape),
      title: widget.title,
    );
  }
}

class _MasterPage extends StatelessWidget {
  const _MasterPage({
    this.leading,
    this.title,
    this.masterViewBuilder,
  });

  final MasterViewBuilderWidget? masterViewBuilder;
  final Widget? title;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
        leading: leading,
        centerTitle: true,
        backgroundColor: context.theme.primaryColor,
        actions: const <Widget>[],
      ),
      body: masterViewBuilder!(context, false),
    );
  }
}

const double _kCardElevation = 4.0;
const double _kMasterViewWidth = 320.0;
const double _kDetailPageFABlessGutterWidth = 40.0;
const double _kDetailPageFABGutterWidth = 84.0;

class MasterDetailScaffoldWidget extends StatefulWidget {
  final MasterViewBuilderWidget masterViewBuilder;

  /// Builder for the detail page.
  ///
  /// The detail page is inside a [DraggableScrollableSheet] and should have a scrollable element
  /// that uses the [ScrollController] provided. In fact, it is strongly recommended the entire
  /// lateral page is scrollable.
  final DetailPageBuilderWidget detailPageBuilder;
  final ActionBuilderWidget? actionBuilder;
  final Object? initialArguments;
  final Widget? title;
  final double? detailPageFABlessGutterWidth;

  const MasterDetailScaffoldWidget({
    super.key,
    required this.detailPageBuilder,
    required this.masterViewBuilder,
    this.actionBuilder,
    this.initialArguments,
    this.title,
    this.detailPageFABlessGutterWidth,
  });

  @override
  MasterDetailScaffoldWidgetState createState() => MasterDetailScaffoldWidgetState();
}

class MasterDetailScaffoldWidgetState extends State<MasterDetailScaffoldWidget> implements _PageOpener {
  late FloatingActionButtonLocation floatingActionButtonLocation;
  late double detailPageFABGutterWidth;
  late double detailPageFABlessGutterWidth;
  late double masterViewWidth;

  final ValueNotifier<Object?> _detailArguments = ValueNotifier<Object?>(null);

  @override
  void initState() {
    super.initState();
    detailPageFABlessGutterWidth = widget.detailPageFABlessGutterWidth ?? _kDetailPageFABlessGutterWidth;
    detailPageFABGutterWidth = _kDetailPageFABGutterWidth;
    masterViewWidth = _kMasterViewWidth;
    floatingActionButtonLocation = FloatingActionButtonLocation.endTop;
  }

  @override
  void dispose() {
    _detailArguments.dispose();
    super.dispose();
  }

  @override
  void openDetailPage(Object arguments) {
    SchedulerBinding.instance.addPostFrameCallback((_) => _detailArguments.value = arguments);
    MasterDetailFlowWidget.of(context).openDetailPage(arguments);
  }

  @override
  void setInitialDetailPage(Object arguments) {
    SchedulerBinding.instance.addPostFrameCallback((_) => _detailArguments.value = arguments);
    MasterDetailFlowWidget.of(context).setInitialDetailPage(arguments);
  }

  @override
  Widget build(BuildContext context) {
    // landscape_ui
    return Stack(
      children: <Widget>[
        Scaffold(
          floatingActionButtonLocation: floatingActionButtonLocation,
          appBar: AppBar(
            title: widget.title,
            centerTitle: true,
          leading: IconButton(
            onPressed: () {
              context.navigator().pop();
            },
            padding: const EdgeInsets.all(15),
            icon: Icon(
              Icons.arrow_back,
              shadows: [
                BoxShadow(
                  color: context.theme.shadowColor.withAlpha(110),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
          ),
          
            actions: widget.actionBuilder!(context, ActionLevelType.top),
            backgroundColor: context.theme.primaryColor,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Row(
                children: <Widget>[
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: masterViewWidth),
                    child: IconTheme(
                      data: Theme.of(context).primaryIconTheme,
                      child: Container(
                        alignment: AlignmentDirectional.centerEnd,
                        padding: const EdgeInsets.all(8),
                        child: OverflowBar(
                          spacing: 8,
                          overflowAlignment: OverflowBarAlignment.end,
                          children: widget.actionBuilder!(context, ActionLevelType.view),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: Align(
            alignment: AlignmentDirectional.centerStart,
            child: _masterPanel(context),
          ),
        ),
        // Detail view stacked above main scaffold and master view.
        SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: masterViewWidth - _kCardElevation,
              end: detailPageFABlessGutterWidth,
            ),
            child: ValueListenableBuilder<Object?>(
              valueListenable: _detailArguments,
              builder: (BuildContext context, Object? value, Widget? child) {
                return AnimatedSwitcher(
                  transitionBuilder: (Widget child, Animation<double> animation) => const FadeUpwardsPageTransitionsBuilder().buildTransitions<void>(
                    null,
                    null,
                    animation,
                    null,
                    child,
                  ),
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    key: ValueKey<Object?>(value ?? widget.initialArguments),
                    constraints: const BoxConstraints.expand(),
                    child: _DetailView(
                      builder: widget.detailPageBuilder,
                      arguments: value ?? widget.initialArguments,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  ConstrainedBox _masterPanel(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: masterViewWidth),
      child: widget.masterViewBuilder(context, true),
    );
  }
}

class _DetailView extends StatelessWidget {
  final DetailPageBuilderWidget builder;
  final Object? arguments;
  const _DetailView({
    required this.builder,
    this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    if (arguments == null) {
      return const SizedBox.shrink();
    }
    final double screenHeight = MediaQuery.sizeOf(context).height;
    final double minHeight = (screenHeight - kToolbarHeight) / screenHeight;

    return DraggableScrollableSheet(
      initialChildSize: minHeight,
      minChildSize: minHeight,
      expand: false,
      builder: (BuildContext context, ScrollController controller) {
        return MouseRegion(
          // TODO(TonicArtos): Remove MouseRegion workaround for pointer hover events passing through DraggableScrollableSheet once https://github.com/flutter/flutter/issues/59741 is resolved.
          child: Card(
            color: context.theme.scaffoldBackgroundColor,
            elevation: _kCardElevation,
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.fromLTRB(_kCardElevation, 0.0, _kCardElevation, 0.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(3.0)),
            ),
            child: builder(
              context,
              arguments,
              controller,
            ),
          ),
        );
      },
    );
  }
}
