import 'package:rxdart/rxdart.dart';

class Bloc {
  int _pageNumber = 0;
  final _pages = PublishSubject<String>();
  Observable<String> get page => _pages.stream;

  void dispose() { _pages.close(); }

  void next() {
    _pageNumber++;
    _pages.add("$_pageNumber");
    print("$_pageNumber");
  }

  void preview() {
    if(_pageNumber-1 >= 0)
    _pageNumber--;
    _pages.add("$_pageNumber");
    print("$_pageNumber");
  }
}

final bloc = Bloc();