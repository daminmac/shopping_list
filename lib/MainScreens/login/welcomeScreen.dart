import 'package:flutter/material.dart';
import 'package:shopping_list/Utils/TextApp.dart';
import 'package:shopping_list/Widgets/Design/DesignWidgets.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

Widget _loginButton(BuildContext context) {
  // rectángulo clickable
  return Container(
    padding: EdgeInsets.only(
      top: 50,
      bottom: 25,
    ),
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () => print('Botón iniciar sesión pulsado'),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        padding: EdgeInsets.all(15),
        elevation: 5, // Elevación
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // Borde redondeado
        ),
      ),
      child: Text(
        TextApp.LOGIN,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          letterSpacing: 1.5,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget _signUpButton(BuildContext context) {
  return Container(
    width: double.infinity,
    child: OutlinedButton(
      style: ButtonStyle(
        side: WidgetStateProperty.all(
          BorderSide(color: Colors.white),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
        foregroundColor:
            WidgetStateProperty.all(Theme.of(context).primaryColorLight),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      onPressed: () => print('Botón Registro pulsado'),
      child: Text(
        TextApp.SIGNUP,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    ),
  );
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: Designwidgets.linearGradientMain(context),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Designwidgets.titleCustom(),
                _loginButton(context),
                _signUpButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
