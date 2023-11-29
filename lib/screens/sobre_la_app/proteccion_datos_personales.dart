import 'package:flutter/material.dart';


class DataProtectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            const Text(
              'Protección de Datos Personales',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 10),

            const Text(
              'La aplicación de alquiler de cuartos para estudiantes (ESTU’CASA) recopila datos personales de los usuarios, incluyendo nombres, direcciones de correo electrónico, números de teléfono y otra información relevante, esta información será necesaria para crear perfiles de usuario, permitir la comunicación entre propietarios e inquilinos y facilitar el proceso de reserva.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Los datos personales recopilados se utilizarán exclusivamente para los fines relacionados con el funcionamiento de la plataforma, como la gestión de reservas, la comunicación entre usuarios y la verificación de identidad. No se utilizarán con fines publicitarios o comerciales sin el consentimiento expreso de los usuarios.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'La aplicación implementará medidas de seguridad técnicas y organizativas adecuadas para proteger los datos personales de los usuarios, esto incluirá la encriptación de datos, la autenticación segura y el acceso restringido a información confidencial.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'El acceso a los datos personales estará limitado a empleados autorizados que necesiten dicha información para realizar sus funciones, se llevará un registro de acceso para garantizar la transparencia y la responsabilidad y los usuarios serán informados claramente sobre la recopilación, el uso de sus datos personales al registrarse en la plataforma. Se solicitará su consentimiento explícito antes de procesar cualquier dato personal.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Los usuarios tendrán derecho a acceder, rectificar, eliminar o portar sus datos personales también podrán retirar su consentimiento en cualquier momento y la aplicación facilitará el ejercicio de estos derechos a través de un proceso sencillo.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'La aplicación proporcionará una plataforma de comunicación segura para que los usuarios puedan interactuar entre sí y con el soporte al cliente, las conversaciones privadas se cifrarán para proteger la privacidad de los usuarios, se establecerá un sistema de soporte al cliente para responder a preguntas, resolver problemas y brindar asistencia en caso de disputas o problemas relacionados con las reservas. Este servicio será accesible a través de la plataforma.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Los datos personales se retendrán únicamente durante el tiempo necesario para cumplir con los fines para los que fueron recopilados y de acuerdo con las leyes aplicables; Cuando los datos personales ya no sean necesarios, se eliminarán de forma segura y permanente.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Aviso Legal y Responsabilidad',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'La empresa no se hace responsable de cualquier uso indebido de los datos por parte de terceros si los usuarios comparten su información de forma voluntaria. Para cualquier aclaración, puedes ponerte en contacto con nosotros a través del correo electrónico: estucasa2023@gmail.com.',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30,),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context, '/signUp', (route) => false);
                },
                child: const Text('Aceptar'),
              ),
            )

          ],
        ),
      ),
    );
  }
}
