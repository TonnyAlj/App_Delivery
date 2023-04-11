import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      backgroundColor: const Color.fromRGBO(252, 233, 205, 1),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: 400,
                    height: 230,
                    child: Image.asset('assets/images/Logo00.png')),
                const SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 40),
                        textStyle: const TextStyle(
                          fontSize: 20
                        )
                      ),
                      onPressed: () {
                        if (email == 'antonioneto@gmail.com' &&
                            password == '1234') {
                          Navigator.of(context).pushNamed('/home');
                        } else {
                          debugPrint('Erro no login');
                        }
                      },
                      child: const Text('Entrar'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/acount');
                      },
                      child: const Text(
                        'Registrar',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 16,
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
