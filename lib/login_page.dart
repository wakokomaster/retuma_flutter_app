import 'package:flutter/material.dart';
import 'package:retuma_flutter_app/home_page.dart';
import 'styles/app_color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColor.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome Back",
                style: TextStyle(
                    fontSize: 20, fontFamily: 'Urbanist', color: AppColor.font),
              ),
              const SizedBox(
                height: 10, // Adjust the height as needed
              ),
              const Text(
                'Sign In',
                style: TextStyle(
                    fontFamily: 'Urbanist-ExtraBold',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: AppColor.font),
              ),
              const SizedBox(
                height: 10, // Adjust the height as needed
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: 'Username',
                    hintStyle: TextStyle(color: AppColor.font.withOpacity(0.6)),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // Adjust the radius here
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Urbanist', // Set the color to white
                  ),
                ),
              ),
              const SizedBox(
                height: 5, // Adjust the height as needed
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: AppColor.font.withOpacity(0.6)),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // Adjust the radius here
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Urbanist', // Set the color to white
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  debugPrint('Forgot password button is pressed!');
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: AppColor.primary,
                      fontFamily: 'Urbanist'),
                ),
              ),
              const SizedBox(
                height: 10, // Adjust the height as needed
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  elevation: MaterialStateProperty.all(4),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Urbanist', // Set the color to white
                  ),
                ),
              ),
              const SizedBox(
                height: 10, // Adjust the height as needed
              ),
              const Divider(),
              const SizedBox(height: 10),
              const Text(
                'Or sign in with:',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Urbanist', // Set the color to white
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  debugPrint('Login with google button is pressed!');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'images/google.png',
                      width: 20,
                    ),
                    const Text(' Login with Google'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  debugPrint('Login with facebook button is pressed!');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'images/facebook.png',
                      width: 20,
                    ),
                    const Text(' Login with Facebook'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Urbanist' // Set the color to white
                        ),
                  ),
                  TextButton(
                    onPressed: () {
                      debugPrint('Sign up button is pressed!');
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: AppColor.primary,
                          fontFamily: 'Urbanist'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
