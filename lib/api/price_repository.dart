import 'package:trading_app_flutter/api/api.dart';
import 'package:trading_app_flutter/model/price.dart';

class PriceRepository {
  final String accountNr = 'YOUR_OANDA_ACCOUNT_NUMBER';
  final String instruments =
      'EUR_USD,GBP_USD,USD_JPY,AUD_USD,EUR_GBP,USD_CAD,USD_CHF,NZD_CHF,USD_HKD,USD_SGD';

  Future<List<Price>> getPriceList() async {
    final url =
        'https://api-fxpractice.oanda.com/v3/accounts/$accountNr/pricing?instruments=$instruments';
    final response = await ApiRequest(url: url, data: {}).get();
    List<Price> prices =
        (response['prices'] as List).map((p) => Price.fromJson(p)).toList();
    return prices;
  }

  Future<Price> getPrice(String instrument) async {
    final url =
        'https://api-fxpractice.oanda.com/v3/accounts/$accountNr/pricing?instruments=$instrument';
    final response = await ApiRequest(url: url, data: {}).get();
    return Price.fromJson(response['prices'][0]);
  }
}