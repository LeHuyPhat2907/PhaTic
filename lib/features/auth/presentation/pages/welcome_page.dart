import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity, // Kéo giãn hết chiều ngang
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 1), // Đẩy logo xuống một chút

              // 1. LOGO PHATIC
              Image.asset(
                'assets/images/logo.png',
                width: 350, // Điều chỉnh size tùy thực tế
                fit: BoxFit.contain,
              ),

              const Spacer(flex: 2),

              // 2. HÌNH MINH HỌA
              Image.asset(
                'assets/images/welcome_illust.png',
                width: 300, // Điều chỉnh size tùy thực tế
                fit: BoxFit.contain,
              ),

              const Spacer(flex: 3),

              // 3. NÚT "THAM GIA"
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: SizedBox(
                  width: 250, // Độ rộng của nút
                  height: 50, // Chiều cao của nút
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Chuyển sang màn hình Đăng nhập/Đăng ký sau
                      print("Bấm nút Tham gia!");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryGreen,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25), // Bo góc tròn
                      ),
                    ),
                    child: const Text(
                      'Tham gia',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

                const Spacer(flex: 1) // Khoảng cách từ nút đến đáy màn hình
            ],
          ),
        ),
      ),
    );
  }
}