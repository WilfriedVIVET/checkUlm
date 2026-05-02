

class Responsive {
  static double cardWidth(double width) {
    if (width < 600) return width;
    if (width < 1000) return width * 0.45;
    return width * 0.3;
  }

  static double cardHeight(double width) {
    if (width < 600) return 110;
    if (width < 1000) return 130;
    return 140;
  }
}