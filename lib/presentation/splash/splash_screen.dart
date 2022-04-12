import 'package:crypto_stream_demo/config/colors.dart';
import 'package:crypto_stream_demo/config/styles.dart';
import 'package:crypto_stream_demo/gen/assets.gen.dart';
import 'package:crypto_stream_demo/presentation/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(27.w, 215.h, 21.w, 0),
                width: 1.sw,
                height: 1.sh,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff8160EF),
                      Color(0xff5A28FE),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bit',
                      style: AppStyle.fontSize34.bold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Cuckoo',
                      style: AppStyle.fontSize34.bold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Collect your bit coins',
                      style: AppStyle.fontSize16.bold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 50.h),
                    Text(
                      'How Cuckoo will help?',
                      style: AppStyle.fontSize14.bold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 29.h),
                    Row(
                      children: [
                        Container(
                          height: 10.sp,
                          width: 10.sp,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.greenNeon),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Cuckoo will help you to buy/sell your bit coins',
                          style: AppStyle.fontSize12.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      children: [
                        Container(
                          height: 10.sp,
                          width: 10.sp,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.greenNeon),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Cuckoo will help you to set the price tracker',
                          style: AppStyle.fontSize12.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      children: [
                        Container(
                          height: 10.sp,
                          width: 10.sp,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.greenNeon),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Cuckoo is faster smart & Sweet',
                          style: AppStyle.fontSize12.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 70.h),
                    Text(
                      'Enter your Mobile Number',
                      style: AppStyle.fontSize16.bold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Container(
                          height: 56.sp,
                          width: 53.sp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.sp),
                                bottomLeft: Radius.circular(8.sp),
                              ),
                              color: AppColors.lightGrey),
                          child: Center(
                            child: Text(
                              '84',
                              style: AppStyle.fontSize14
                                  .copyWith(color: Colors.grey),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 56.sp,
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Phone number',
                                  hintStyle: AppStyle.fontSize16
                                      .copyWith(color: Colors.grey),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 20.h,
                                    horizontal: 10.w,
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                ),
                                style: AppStyle.fontSize16,
                                keyboardType: TextInputType.number,
                                onSubmitted: (value) {
                                  Navigator.pushNamed(
                                    context,
                                    RouteDefine.homeScreen.name,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RouteDefine.homeScreen.name);
                          },
                          child: Container(
                            width: 66.w,
                            height: 56.sp,
                            decoration: BoxDecoration(
                              color: AppColors.greenNeon,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.sp),
                                bottomRight: Radius.circular(40.sp),
                              ),
                            ),
                            child: const Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 87.h,
                left: -100.w,
                child: Assets.images.logo.svg(
                  height: 118.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
