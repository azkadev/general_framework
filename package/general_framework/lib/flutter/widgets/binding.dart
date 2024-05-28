/// * [WidgetsBinding], which handles the widget tree.
class WidgetsFlutterBinding {
  /// Returns an instance of the binding that implements
  /// [WidgetsBinding]. If no binding has yet been initialized, the
  /// [WidgetsFlutterBinding] class is used to create and initialize
  /// one.
  ///
  /// You only need to call this method if you need the binding to be
  /// initialized before calling [runApp].
  ///
  /// In the `flutter_test` framework, [testWidgets] initializes the
  /// binding instance to a [TestWidgetsFlutterBinding], not a
  /// [WidgetsFlutterBinding]. See
  /// [TestWidgetsFlutterBinding.ensureInitialized].
  static void ensureInitialized() {}
}
