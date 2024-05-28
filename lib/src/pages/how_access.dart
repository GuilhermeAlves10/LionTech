import 'package:app_gooday/src/componets/color_style.dart';
import 'package:flutter/material.dart';

class HowAccess extends StatefulWidget {
  const HowAccess({super.key});

  @override
  State<HowAccess> createState() => _HowAccessState();
}

class _HowAccessState extends State<HowAccess> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Image.asset(
              'lib/assets/Lion1.png',
              width: MediaQuery.of(context).size.width,
              height: 339,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text('Seja Bem Vindo !',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          const Text(
            'Como deseja acessar?',
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 15,
              ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
            child: 
            SizedBox(
              height: 62,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton.icon(
                onPressed: () => {
                  Navigator.pushNamed(context, '/login')
                },
                icon: Image.asset(
                  'lib/assets/Lion1.png',            
                  width: 150,
                  height: 150,
                )     ,

                label: const Text(
                  'Como deseja acessar?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromARGB(224, 0, 0, 0),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
