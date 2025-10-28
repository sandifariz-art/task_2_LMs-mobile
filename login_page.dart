import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Let's get started",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      hintText: 'Enter your email',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      hintText: 'Enter your password',
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // Forgot password logic
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Or',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // Google login logic
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: const BorderSide(color: Colors.grey),
                    ),
                    icon: Container(
                      width: 24,
                      height: 24,
                      child: CustomGoogleLogo(),
                    ),
                    label: const Text(
                      'Login With Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // Facebook login logic
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: const BorderSide(color: Colors.grey),
                    ),
                    icon: Container(
                      width: 24,
                      height: 24,
                      child: CustomFacebookLogo(),
                    ),
                    label: const Text(
                      'Login with Facebook',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Register here',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Custom Google Logo menggunakan Flutter Painting API
class CustomGoogleLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(24, 24),
      painter: GoogleLogoPainter(),
    );
  }
}

class GoogleLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint redPaint = Paint()..color = const Color(0xFFEA4335);
    final Paint bluePaint = Paint()..color = const Color(0xFF4285F4);
    final Paint greenPaint = Paint()..color = const Color(0xFF34A853);
    final Paint yellowPaint = Paint()..color = const Color(0xFFFBBC05);

    // Draw Google "G"
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = size.width / 2 - 2;

    // Background circle (optional white background)
    canvas.drawCircle(Offset(centerX, centerY), radius, Paint()..color = Colors.white);

    // Red arc (top right)
    canvas.drawArc(
      Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
      -0.8,
      1.0,
      true,
      redPaint,
    );

    // Green arc (bottom right)
    canvas.drawArc(
      Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
      0.2,
      1.0,
      true,
      greenPaint,
    );

    // Blue arc (left side)
    canvas.drawArc(
      Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
      2.8,
      1.0,
      true,
      bluePaint,
    );

    // Yellow arc (top left)
    canvas.drawArc(
      Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
      -2.2,
      1.0,
      true,
      yellowPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// Custom Facebook Logo menggunakan Flutter Painting API
class CustomFacebookLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(24, 24),
      painter: FacebookLogoPainter(),
    );
  }
}

class FacebookLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint facebookBlue = Paint()..color = const Color(0xFF1877F2);
    final Paint whitePaint = Paint()..color = Colors.white;

    // Draw Facebook "f" logo
    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    
    // Background circle
    canvas.drawCircle(Offset(size.width/2, size.height/2), size.width/2, facebookBlue);
    
    // Draw white "f"
    final Path fPath = Path();
    fPath.moveTo(size.width * 0.6, size.height * 0.3);
    fPath.lineTo(size.width * 0.6, size.height * 0.45);
    fPath.lineTo(size.width * 0.65, size.height * 0.45);
    fPath.lineTo(size.width * 0.65, size.height * 0.5);
    fPath.lineTo(size.width * 0.6, size.height * 0.5);
    fPath.lineTo(size.width * 0.6, size.height * 0.7);
    fPath.lineTo(size.width * 0.55, size.height * 0.7);
    fPath.lineTo(size.width * 0.55, size.height * 0.5);
    fPath.lineTo(size.width * 0.5, size.height * 0.5);
    fPath.lineTo(size.width * 0.5, size.height * 0.45);
    fPath.lineTo(size.width * 0.55, size.height * 0.45);
    fPath.lineTo(size.width * 0.55, size.height * 0.35);
    fPath.close();
    
    canvas.drawPath(fPath, whitePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}