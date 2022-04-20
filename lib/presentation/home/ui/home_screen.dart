import 'package:crypto_stream_demo/config/colors.dart';
import 'package:crypto_stream_demo/config/styles.dart';
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
                  top: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Account Value',
                              style: AppStyle.fontSize14.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '₹48,374.68',
                              style: AppStyle.fontSize16.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '+2.36% From last 2 days',
                              style: AppStyle.fontSize12.copyWith(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 100),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          height: 36,
                          width: 101,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),
                            color: AppColors.greenNeon,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Buy',
                                  style: AppStyle.fontSize12.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                const VerticalDivider(
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                                Text(
                                  'Sell',
                                  style: AppStyle.fontSize12.copyWith(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
          ],
        ),
      ),
    );
  }
}
