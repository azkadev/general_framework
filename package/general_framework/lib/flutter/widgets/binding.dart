// ignore_for_file: unused_field

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

mixin WidgetsBinding on BindingBase {
  static SchedulerBinding? _instance;

  static WidgetsBinding get instance => BindingBase.checkInstance(null);  
  
  void addPostFrameCallback(FrameCallback callback, {String debugLabel = 'callback'}) {}
}

abstract class BindingBase {
  static T checkInstance<T extends BindingBase>(T? instance) {
    return instance!;
  }

  void initInstances() {}
}

mixin SchedulerBinding on BindingBase {
  @override
  void initInstances() {}

  void addPostFrameCallback(FrameCallback callback, {String debugLabel = 'callback'}) {}
}
typedef FrameCallback = void Function(Duration timeStamp);
