class Bids {
  final List<Bid> bids;

  Bids({required this.bids});

  static fromJson(json) {}
}

class Bid {
  final String price;
  final int liquidity;

  Bid({required this.price, required this.liquidity});

  factory Bid.fromJson(Map<String, dynamic> json) {
    return Bid(
      price: json['price'],
      liquidity: json['liquidity'],
    );
  }
}