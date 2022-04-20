import 'package:crypto_stream_demo/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../bloc/home_bloc.dart';

class TopCoinRowWidget extends StatefulWidget {
  const TopCoinRowWidget({Key? key}) : super(key: key);

  @override
  State<TopCoinRowWidget> createState() => _TopCoinRowWidgetState();
}

class _TopCoinRowWidgetState extends State<TopCoinRowWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is GotCoinListState) {
          return ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 9),
            itemCount: state.listCoin.data?.length ?? 1,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => listViewItem(
              price: state.listCoin.data?[index].quote?.usd?.price ?? 0,
              coinName: state.listCoin.data?[index].name ?? '',
              coinSymbol: state.listCoin.data?[index].symbol ?? '',
              percentChange:
                  state.listCoin.data?[index].quote?.usd?.percentChange1H ?? 0,
            ),
            padding: const EdgeInsets.only(left: 9),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

Widget listViewItem({
  required String coinName,
  required String coinSymbol,
  required double price,
  required double percentChange,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Container(
      padding: const EdgeInsets.only(left: 20),
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8.r),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 26),
          Text(
            coinName,
            style: AppStyle.fontSize16.bold,
          ),
          Text(
            coinSymbol,
            style: AppStyle.fontSize12.bold.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 7),
          Text(
            NumberFormat.currency(
              decimalDigits: 2,
              symbol: '\$',
            ).format(price),
            style: AppStyle.fontSize16.bold,
          ),
          Text(
            '${percentChange.toStringAsFixed(2)}%',
            style: AppStyle.fontSize12.copyWith(color: Colors.red),
          ),
        ],
      ),
    ),
  );
}
