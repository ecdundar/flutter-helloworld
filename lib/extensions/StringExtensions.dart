import 'dart:html';
import 'dart:ui';

extension StringExtensions on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }

  toTextWidget() {
    return Text(this);
  }
}
