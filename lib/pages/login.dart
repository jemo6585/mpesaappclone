import 'package:flutter/material.dart';
import 'package:mpesaappclone/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  // form key and controllers
  final _formKey = GlobalKey<FormState>();
  final _digitOneController = TextEditingController();
  final _digitTwoController = TextEditingController();
  final _digitThreeController = TextEditingController();
  final _digitFourController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 100,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset('assets/avatar.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
          const Text(
            username,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            phoneNumber,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // Login with your mpesa pin
          const Text(
            'Login with your M-Pesa PIN',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          const SizedBox(height: 20),
          // circular input fields
          Form(
            key: _formKey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: TextFormField(
                    controller: _digitOneController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: TextFormField(
                    controller: _digitTwoController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: TextFormField(
                    controller: _digitThreeController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: TextFormField(
                    controller: _digitFourController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // keypad
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              KeyPadButton(digit: 1),
              SizedBox(width: 20),
              KeyPadButton(digit: 2),
              SizedBox(width: 20),
              KeyPadButton(digit: 3),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              KeyPadButton(digit: 4),
              SizedBox(width: 20),
              KeyPadButton(digit: 5),
              SizedBox(width: 20),
              KeyPadButton(digit: 6),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              KeyPadButton(digit: 7),
              SizedBox(width: 20),
              KeyPadButton(digit: 8),
              SizedBox(width: 20),
              KeyPadButton(digit: 9),

              //fingerprint
            ],
          ),
          const SizedBox(height: 20),
          IconButton(onPressed: () {}, icon: const Icon(Icons.fingerprint))
        ],
      ),
    );
  }
}

class KeyPadButton extends StatefulWidget {
  final digit;
  const KeyPadButton({super.key, required this.digit});

  @override
  State<KeyPadButton> createState() => _KeyPadButtonState();
}

class _KeyPadButtonState extends State<KeyPadButton> {
  @override
  Widget build(BuildContext context) {
    // circular button
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.greenAccent),
        borderRadius: BorderRadius.circular(
          40,
        ),
      ),
      child: Center(
        child: Text(
          widget.digit.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
