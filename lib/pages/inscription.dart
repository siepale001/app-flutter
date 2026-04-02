import 'package:fayoven/pages/connexion.dart';
import 'package:fayoven/widgets/boutton.dart';
import 'package:fayoven/widgets/input.dart';
import 'package:fayoven/widgets/square.dart';
import 'package:flutter/material.dart';

class Inscriptionpage extends StatefulWidget {
  const Inscriptionpage({super.key});

  @override
  State<Inscriptionpage> createState() => _InscriptionpageState();
}

class _InscriptionpageState extends State<Inscriptionpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/1200x/95/f4/95/95f495af127a30a21f68f61c81db5daa.jpg",
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
                    "INSCRIPTION",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Text(
                    "Entre dans un autre monde avec FOYOVEN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 253, 253),
                    ),
                  ),
                  Text(
                    "Inscrit toi ici ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),

                  SizedBox(height: 30),
                  Form(
                    child: Column(
                      children: [
                        Input(label: "Nom", hint: "veillez entrer votre Nom"),

                        Input(
                          label: "Prenom(s)",
                          hint: "veillez Entrer votre Prenom(s)",
                        ),

                        Input(
                          label: "E-Mail",
                          hint: "veillez saisir votre E-mail",
                        ),
                        Input(
                          label: "Mot De Passe",
                          hint: "veillez saisir votre Mot De Passe",
                        ),
                        Input(
                          label: "Mot De Passe",
                          hint: "confirmer votre Mot De Passe",
                        ),

                        SizedBox(height: 25),

                        Boutton(action: "s'inscrire"),
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
                              "Dejà un compte ?  ",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Connexion(),
                                  ),
                                );
                              },
                              child: Text(
                                "Connectez vous",
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
