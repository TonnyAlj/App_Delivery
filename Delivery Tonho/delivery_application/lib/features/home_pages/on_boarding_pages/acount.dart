import 'package:flutter/material.dart';

class AcountPage extends StatefulWidget {
  const AcountPage({super.key});

  @override
  State<AcountPage> createState() => _AcountPageState();
}

class _AcountPageState extends State<AcountPage> {
  String email = '';
  String password = '';
  String comparePassword = '';

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
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
            padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: 400,
                    height: 230,
                    child: Image.asset('assets/images/Logo00.png')),
                const SizedBox(height: 20),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
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
                const SizedBox(height: 20),
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
                const SizedBox(height: 20),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirme Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    style: style,
                    onPressed: () {
                      //if (email == 'antonioneto@gmail.com' &&
                      //    password == '1234') {
                      //  Navigator.of(context).pushReplacementNamed('/home');
                     // } else {
                      //  debugPrint('Erro no login');
                     // }
                    },
                    child: const Text("Criar Conta")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
