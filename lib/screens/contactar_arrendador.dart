import 'package:flutter/material.dart';

class MensajeriaScreen extends StatefulWidget {
  final String arrendadorNombre;

  MensajeriaScreen({required this.arrendadorNombre});

  @override
  _MensajeriaScreenState createState() => _MensajeriaScreenState();
}

class _MensajeriaScreenState extends State<MensajeriaScreen> {
  TextEditingController _mensajeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contactar al Arrendador'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Colors.grey[200],
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Aquí puedes mostrar mensajes anteriores si los hay
                      // Puedes utilizar un ListView.builder o similar
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _mensajeController,
                    decoration: InputDecoration(
                      hintText: 'Escribe tu mensaje...',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      side: const BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      )),
                  onPressed: () {
                    // Lógica para enviar el mensaje
                    if (_mensajeController.text.isNotEmpty) {
                      // Aquí puedes manejar el envío del mensaje, como almacenarlo en una base de datos o enviar una notificación al arrendador
                      // Por ahora, simplemente imprimo el mensaje en la consola
                      print('Mensaje enviado: ${_mensajeController.text}');
                      _mensajeController.clear();
                    }
                  },
                  child: Text('Enviar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
