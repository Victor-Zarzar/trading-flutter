import 'package:trading_app_flutter/model/asks.dart';
import 'package:trading_app_flutter/model/bids.dart';

class Price {
  final String type;
  final String time;
  final Bids bids;
  final Asks asks;
  final String closeoutBid;
  final String closeoutAsk;
  final bool tradeable;
  final String instrument;

  Price(
      {required this.type,
      required this.time,
      required this.bids,
      required this.asks,
      required this.closeoutBid,
      required this.closeoutAsk,
      required this.tradeable,
      required this.instrument});

  factory Price.fromJson(dynamic json) {
  if (json == null) {
    return Price(
      type: '',
      bids: Bids(bids: []), 
      asks: Asks(asks: []),
      closeoutBid: '',
      closeoutAsk: '',
      tradeable: false,
      instrument: '',
      time: ''
    );
  }

  return Price(
    type: json['type'],
    time: json['time'],
    bids: Bids.fromJson(json['bids']),
    asks: Asks.fromJson(json['asks']),
    closeoutBid: json['closeoutBid'], 
    closeoutAsk: json['closeoutAsk'],
    tradeable: json['tradeable'],
    instrument: json['instrument']
  );
}
}
