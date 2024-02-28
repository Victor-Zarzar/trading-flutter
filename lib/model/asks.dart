class Asks {
  final List<Ask> asks;

  Asks({required this.asks});

  static fromJson(json) {}
}

class Ask {
  final String price;
  final int liquidity;

  Ask({required this.price, required this.liquidity});

  factory Ask.fromJson(Map<String, dynamic> json) {
    return Ask(
      price: json['price'],
      liquidity: json['liquidity'],
    );
  }
}