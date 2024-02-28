class Candles {
  final String instrument;
  final List<Candle> candles;

  Candles({required this.instrument, required this.candles});

  factory Candles.fromJson(dynamic json) {
    if (json == null) {
      return Candles(instrument: '', candles: []);
    }

    return Candles(
      instrument: json['instrument'],
      candles:
          (json['candles'] as List).map((c) => Candle.fromJson(c)).toList(),
    );
  }
}

class Candle {
  final bool complete;
  final int value;
  final String time;
  final CandleItem candleItem;

  Candle({required this.complete, required this.value, required this.time, required this.candleItem});

  factory Candle.fromJson(dynamic json) {
    if (json == null) {
      return Candle(complete: false, value: 0, time: '', candleItem: CandleItem(open: '', close: '', high: '', low: ''));
    }

    return Candle(
      complete: json['complete'],
      value: json['value'],
      time: json['time'],
      candleItem: CandleItem.fromJson(json['ask']),
    );
  }
}

class CandleItem {
  final String open;
  final String high;
  final String low;
  final String close;

  CandleItem({required this.open, required this.high, required this.low, required this.close});

  factory CandleItem.fromJson(dynamic json) {
    if (json == null) {
      return CandleItem(open: '', close: '', high: '', low: '');
    }

    return CandleItem(
      open: json['o'],
      high: json['h'],
      low: json['l'],
      close: json['c'],
    );
  }
}