import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Log in',
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: const TextField(
                  decoration: InputDecoration(hintText: 'Username'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: const TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                  obscureText: true,
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.blue)
                ),
                  onPressed: () {
                    debugPrint('Forgot is Clicked');
                  },
                  child: const Text('Forgot Password?')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueAccent)),
                  onPressed: () {
                    debugPrint('Login is Clicked');
                  },
                  child: const Text('Login')),
              const SizedBox(
                height: 15,
              ),
              const Text('or Sign in with:'),
              const SizedBox(
                height: 15,
              ),
              IntrinsicWidth(
                child: ElevatedButton(
                    onPressed: () {
                      debugPrint('Google is clicked');
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/google.png', width: 25),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Login with Google')
                        ])),
              ),
              const SizedBox(height: 10),
              IntrinsicWidth(
                child: ElevatedButton(
                    onPressed: () {
                      debugPrint('Facebook is clicked');
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/facebook.png', width: 25),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Login with Facebook')
                        ])),
              ),
             const SizedBox( height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't Have an account?"),
                  TextButton(onPressed: () {}, child: const Text('Sign up'))
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
