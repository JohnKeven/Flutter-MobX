import 'package:estudomobx/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            //  Padding( 
            //   padding: const EdgeInsets.all(16),
            //   child: Observer(
            //     builder: (_) => Text(
            //         '${controller.contador}',
            //         style: const TextStyle(fontSize: 80),
            //       ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: const InputDecoration(labelText: 'Email'),
                onChanged: controller.setEmail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: const InputDecoration(labelText: 'Senha'),
                onChanged: controller.setSenha,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Observer(
                builder: (_) {
                  return Text(controller.formularioValidado ? 'Validado' : '* Campos não validados');
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(16),
                child: Observer(
                  builder: (_) {
                    return ElevatedButton(
                      onPressed: controller.formularioValidado ? () {} : null,
                      child: const Text(
                        'Logar',
                        style: TextStyle(fontSize: 30),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
