class BarData {
  final Amount januaryAmount;
  final Amount februaryAmount;
  final Amount marchAmount;
  final Amount aprilAmount;
  final Amount mayAmount;
  final Amount juneAmount;

  BarData(this.januaryAmount, this.februaryAmount, this.marchAmount,
      this.aprilAmount, this.mayAmount, this.juneAmount);

  static List<IndividualBar> data = [
    IndividualBar(0, Amount(earned: 700, spent: 300)),
    IndividualBar(1, Amount(earned: 900, spent: 500)),
    IndividualBar(2, Amount(earned: 400, spent: 180)),
    IndividualBar(3, Amount(earned: 736.4, spent: 300)),
    IndividualBar(4, Amount(earned: 900, spent: 500)),
    IndividualBar(5, Amount(earned: 850, spent: 480)),
  ];
}

class IndividualBar {
  final int x;
  final Amount y;

  IndividualBar(this.x, this.y);
}

class Amount {
  final double? initial;
  final double spent;
  final double earned;

  Amount({this.initial = 0, required this.earned, required this.spent});
}
