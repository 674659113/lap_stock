import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F3FF), // Very light lavender background
      body: Stack(
        children: [
          // Content
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  // Logo & App Name
                  Center(
                    child: Column(
                      children: [
                        // Placeholder for the main logo image
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              const Icon(
                                Icons.restaurant_menu,
                                size: 100,
                                color: Color(0xFF7B66FF),
                              ),
                              // Decorative sparkles (simplified)
                              Positioned(
                                top: 20,
                                right: 20,
                                child: Icon(Icons.star, size: 20, color: const Color(0xFF7B66FF).withOpacity(0.3)),
                              ),
                              Positioned(
                                bottom: 30,
                                left: 10,
                                child: Icon(Icons.star, size: 15, color: const Color(0xFF7B66FF).withOpacity(0.3)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        // App Title with "Stroke" effect (using Stack for simple outline)
                        Stack(
                          children: [
                            Text(
                              'สุ่มอร่อย',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 6
                                  ..color = const Color(0xFF7B66FF),
                              ),
                            ),
                            const Text(
                              'สุ่มอร่อย',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'เปิดเมนูใหม่ ให้ทุกมื้อเป็นเรื่องอร่อย',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF6C5CE7),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 48),
                  // Input Fields
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'อีเมล หรือชื่อผู้ใช้',
                        hintStyle: const TextStyle(color: Color(0xFFB2BEC3)),
                        prefixIcon: const Icon(Icons.email_outlined, color: Color(0xFF636E72)),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: TextField(
                      obscureText: _isObscured,
                      decoration: InputDecoration(
                        hintText: 'รหัสผ่าน',
                        hintStyle: const TextStyle(color: Color(0xFFB2BEC3)),
                        prefixIcon: const Icon(Icons.lock_outline, color: Color(0xFF636E72)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscured ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                            color: const Color(0xFF636E72),
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscured = !_isObscured;
                            });
                          },
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  // Login Button
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF8E7CFF), Color(0xFF6C5CE7)],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF6C5CE7).withOpacity(0.3),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'เข้าสู่ระบบ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Footer Links
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'สมัครสมาชิก',
                            style: TextStyle(
                              color: Color(0xFF636E72),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'ลืมรหัสผ่าน',
                            style: TextStyle(
                              color: Color(0xFF636E72),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
