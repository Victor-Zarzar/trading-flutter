import 'package:intl/intl.dart';
import 'package:trading_app_flutter/api/api.dart';
import 'package:trading_app_flutter/model/candles.dart';

class CandlesRepository {
  Future<Candles> getCandles(String instrument, String granularity) async {
  final today = DateFormat('yyyy-MM-dd').format(
    DateTime.now(),
  );
  final url =
      'https://api-fxpractice.oanda.com/v3/instruments/$instrument/candles?granularity=$granularity&price=A&from=${today}T00:00&count=40';
  try {
    final response = await ApiRequest(url: url, data: {}).get();
    return Candles.fromJson(response);
  } catch (error) {
    throw Exception('Exceptiob occured with error $error');
  }
 }
}