import 'package:flutter/material.dart';
import 'package:flutterproducts/core/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _showInputValues() {
    String email = _emailController.text;
    String password = _passwordController.text;

    print("Email : $email  - Password : $password");
  }

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTextInput('Email', Icons.email, _emailController),
              const SizedBox(
                height: 20,
              ),
              _buildTextInput('Password', Icons.password, _passwordController,
                  isPassword: true),
              const SizedBox(
                height: 40,
              ),
              _buildRegisterButton(),
              const SizedBox(
                height: 20,
              ),
              _buildLoginPrompt(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextInput(
      String hint, IconData icon, TextEditingController controller,
      {bool isPassword = false}) {
    return Container(
        decoration: BoxDecoration(
          color: DefaultColors.sentMessageInput,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                controller: controller,
                obscureText: isPassword,
                decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ));
  }

  Widget _buildRegisterButton() {
    return ElevatedButton(
      onPressed: _showInputValues,
      style: ElevatedButton.styleFrom(
          backgroundColor: DefaultColors.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.symmetric(vertical: 15)),
      child: const Text(
        'Login',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildLoginPrompt() {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: RichText(
          text: const TextSpan(
              text: 'Don\'t have an Account?',
              style: TextStyle(color: Colors.grey),
              children: [
                TextSpan(
                  text: "  Click here to Register",
                  style: TextStyle(color: Colors.blue),
                )
              ]),
        ),
      ),
    );
  }
}
