import 'package:crypto_stream_demo/gen/assets.gen.dart';
import 'package:crypto_stream_demo/presentation/home/ui/widgets/top_coin_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Assets.images.homeBgroud.svg(width: 1.sw),
                    const SizedBox(height: 77.5),
                  ],
                ),
                Positioned(
                  bottom: -5.5,
                  child: SizedBox(
                    height: 150,
                    width: 1.sw,
                    child: const TopCoinRowWidget(),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Placeholder(
                  fallbackHeight: 300,
                  fallbackWidth: 1.sw,
                ),
                const SizedBox(height: 30),
                Placeholder(
                  fallbackHeight: 100,
                  fallbackWidth: 1.sw,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
