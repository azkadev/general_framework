///
extension DateTimeExtensionGeneralFramework on DateTime {
  /// set any date time this day
  /// example
  ///
  DateTime extensionGeneralFrameworkToThisDay() {
    return copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      microsecond: 0,
      millisecond: 0,
    );
  }
}
