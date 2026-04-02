import 'package:fayoven/widgets/boutton.dart';
import 'package:fayoven/widgets/input.dart';
import 'package:fayoven/widgets/square.dart';
import 'package:flutter/material.dart';

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/736x/73/1e/49/731e49c09731a975d49a8e97d3c04954.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 40),
              margin: EdgeInsets.all(40),
              child: Column(
                children: [
                  Text(
                    "CONNEXION",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Text(
                    "bienvenu a nouveau sur FAYOVEN ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 253, 253),
                    ),
                  ),
                  Text(
                    "streamez gratuitement a porter de main",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),

                  SizedBox(height: 30),
                  Form(
                    child: Column(
                      children: [
                        Input(
                          label: "E-Mail",
                          hint: "veillez saisir votre E-mail",
                        ),
                        Input(
                          label: "Mot De Passe",
                          hint: "veillez saisir votre Mot De Passe",
                        ),

                        SizedBox(height: 25),

                        Boutton(action: "se connecter"),
                        SizedBox(height: 10),

                        Row(
                          children: [
                            Expanded(child: Divider(thickness: 0.6)),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),

                              child: Text(
                                "Ou continuer avec",
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(child: Divider(thickness: 0.6)),
                            SizedBox(height: 29),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 30,
                          children: [
                            Carre(
                              tof:
                                  "https://freelogopng.com/images/all_img/1657952440google-logo-png-transparent.png",
                            ),
                            Carre(
                              tof:
                                  "https://cdn-icons-png.flaticon.com/512/0/747.png",
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 15),
                            Text(
                              "Pas de compte ?  ",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Inscrivez vous ",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
