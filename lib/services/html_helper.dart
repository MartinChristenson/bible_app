import 'package:html/parser.dart';

class HTML_Helper {
  var htmlDocument = parse('/bible/kj_new/kj_new/01/1.htm');

  String getScripture() {
    var scripture = htmlDocument.getElementsByClassName('verse');
    for (var value in scripture) {
      print(value);
    }
    return '';
  }
}
