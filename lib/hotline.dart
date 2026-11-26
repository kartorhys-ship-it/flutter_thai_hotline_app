class Hotline {
  const Hotline(this.name, this.number, this.imageIndex);

  final String name;
  final String number;
  final int imageIndex;

  Uri get dialUri => Uri(scheme: 'tel', path: number.replaceAll('-', ''));
}
