import 'package:flutter/material.dart';
import 'package:clima_sv/models/constants.dart';
import 'package:clima_sv/ui/login.dart';
import 'package:clima_sv/ui/registro.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants myConstants = Constants();

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: myConstants.primaryColor.withOpacity(.5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/get-started.png'),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  // Navegar a la página de registro
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistroPage()), // Asegúrate de cambiar 'RegistroPage' con el nombre correcto de tu clase
                  );
                },
                child: Container(
                  height: 50,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                    color: myConstants.primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text('REGISTRATE', style: TextStyle(color: Colors.white, fontSize: 18),),
                  ),
                ),
              ),
              const SizedBox(height: 20,), // Espacio entre el botón y el nuevo texto
              GestureDetector(
                onTap: () {
                  // Navegar a la página de inicio de sesión
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
               child: Text(
  '¿Ya tienes una cuenta? Iniciar sesión',
  style: TextStyle(
    color: Color.fromARGB(255, 231, 69, 0), 
    fontSize: 20,
    fontWeight: FontWeight.bold, 
    
  ),
),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
