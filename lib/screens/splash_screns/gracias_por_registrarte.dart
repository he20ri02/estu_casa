import 'package:flutter/material.dart';

class SplashRegistro extends StatefulWidget {
  final Widget? child;
  const SplashRegistro({super.key, this.child});

  @override
  State<SplashRegistro> createState() => _SplashRegistroState();
}

class _SplashRegistroState extends State<SplashRegistro> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => widget.child!),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/gracias_registro.png"),
              fit: BoxFit.cover,
              alignment: Alignment(0, 200)),
        ),
      )),
    );
  }
}
