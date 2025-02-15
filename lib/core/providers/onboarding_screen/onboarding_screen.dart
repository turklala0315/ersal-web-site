import 'package:flutter/foundation.dart';

class OnboardingScreenProvider with ChangeNotifier {
  int _currentpage = 0;
  int get currentpage => _currentpage;
  void updatePage(int page) {
    _currentpage = page;
    notifyListeners();
  }
}
