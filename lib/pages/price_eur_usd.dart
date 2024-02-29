import "dart:io";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:trading_app_flutter/bloc/candles_bloc.dart";
import "package:trading_app_flutter/model/candles.dart";

class PriceEurUsd extends StatefulWidget {
  const PriceEurUsd({super.key});

  @override
  State<PriceEurUsd> createState() => _PriceEurUsdState();
}

class _PriceEurUsdState extends State<PriceEurUsd> {
  String selectedGranularity = '5S';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CandlesBloc()
        ..add(
          CandlesEventStated('EUR_USD', 'S5'),
        ),
        child: BlocBuilder<CandlesBloc, CandlesState>(
          builder: (context, state) {
            if(state is CandlesLoaded) {
              return Center(
                child: Platform.isIOS? const CircularProgressIndicator() : const CupertinoActivityIndicator()
              );
            } else if(state is CandlesLoaded) {
              Candles candles = state.candles;
              final List<CandleData> candleData = [];
              int index = 0;
              for (Candle candle in candles.candles) {
                candleData.add(
                  CandleData(
                    index: '${index++}',
                    ask: double.parse(candle.candleItem.close),
                  ),
                );
              }
              return const Column();
            }  else {
              return Container();
            } 
          }
        ),
    );
  }
}

class CandleData {
  final String index;
  final double ask;

  CandleData(this.index, this.ask);
}