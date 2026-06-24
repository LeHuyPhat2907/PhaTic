import 'package:flutter/material.dart';
import 'features/auth/presentation/pages/welcome_page.dart';

void main() {
  // Tạm thời chưa gọi Firebase Init để test UI cho nhanh
  runApp(const PhaTicApp());
}

class PhaTicApp extends StatelessWidget {
  const PhaTicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PhaTic',
      debugShowCheckedModeBanner: false, // Tắt chữ DEBUG ở góc chữ nhật
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0F7A59)),
        useMaterial3: true,
      ),
      home: const WelcomePage(), // Mở thẳng vào trang Welcome
    );
  }
}