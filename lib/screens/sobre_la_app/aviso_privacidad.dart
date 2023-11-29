import 'package:flutter/material.dart';


class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Fecha de última actualización: 05 de octubre de 2023',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'La aplicación de Estu’Casa se compromete a proteger y respetar tu privacidad. Esta política de privacidad describe cómo recopilamos, usamos y protegemos la información personal que nos proporcionas a través de la Aplicación.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              '1. Información que Recopilamos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Recopilamos la siguiente información personal cuando te registras en la aplicación y utilizas nuestros servicios:',
              style: TextStyle(fontSize: 16),
            ),
           const SizedBox(height: 10),
           const Text(
              '- Información de registro: Nombre, dirección de correo electrónico, número de teléfono y contraseña.',
              style: TextStyle(fontSize: 16),
            ),
           const Text(
              '- Información de perfil: Fotografía de perfil, información académica, preferencias de búsqueda y otra información que elijas proporcionar en tu perfil.',
              style: TextStyle(fontSize: 16),
            ),
           const Text(
              '- Información de pago: Información de tarjeta de crédito o débito, información de cuentas de pago y otros detalles de facturación necesarios para procesar los pagos relacionados con la renta de cuartos.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '- Comunicaciones: Registramos las comunicaciones que tengas con nosotros a través de la Aplicación, como mensajes de chat y correos electrónicos.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '- Información de ubicación: Cuando utilizas la función de búsqueda de cuartos basada en la ubicación, recopilamos información de ubicación precisa.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              '2. Cómo Utilizamos Tu Información',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Utilizamos tu información personal para los siguientes fines:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              '- Facilitar la renta de cuartos y servicios relacionados.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '- Mejorar y personalizar la experiencia del usuario en la Aplicación.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '- Proporcionar soporte al cliente y responder a tus consultas.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '- Enviarte actualizaciones sobre la aplicación y noticias relevantes.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '- Realizar análisis y estudios de mercado para mejorar nuestros servicios.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '- Cumplir con las leyes y regulaciones aplicables.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              '3. Compartir Tu Información',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
           const Text(
              'No vendemos, alquilamos ni compartimos tu información personal con terceros no afiliados, excepto en las siguientes circunstancias:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              '- Con proveedores de servicios de pago y procesamiento de pagos para completar transacciones.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '- Con otros usuarios de la Aplicación cuando sea necesario para facilitar la renta de cuartos.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '- Cuando estemos legalmente obligados a hacerlo para cumplir con las leyes y regulaciones aplicables.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              '4. Seguridad de la Información',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Tomamos medidas razonables para proteger tu información personal contra el acceso no autorizado, la divulgación, la alteración o la destrucción. Utilizamos cifrado SSL para proteger la transmisión de datos.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              '5. Cambios en esta Política',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Nos reservamos el derecho de actualizar esta política de privacidad en cualquier momento. Te notificaremos sobre cambios significativos a través de la Aplicación o por otros medios.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              '6. Contacto',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Si tienes alguna pregunta o inquietud sobre esta política de privacidad o la forma en que manejamos tu información personal, contáctanos a través de estucasa2023@gmail.com.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Al utilizar la aplicación, aceptas esta política de privacidad y consientes la recopilación y uso de tu información personal de acuerdo con los términos descritos aquí.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20,),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context, '/signUp', (route) => false);
                },
                child: Text('Aceptar'),
              ),
            )

            
          ],
        ),
      ),
    );
  }
}
