

// Singleton to hold global state
class GlobalData {
  static final GlobalData _instance = GlobalData._internal();

  GlobalData._internal();

  factory GlobalData() {
    return _instance;
  }

  List<DateTime?> selectedDates = [];
}
