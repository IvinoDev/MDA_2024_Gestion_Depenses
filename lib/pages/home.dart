import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //toolbarHeight: 200,
          backgroundColor: const Color.fromARGB(255, 77, 15, 88),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(Icons.person),
                  ),
                  const Text(
                    "Moussa",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              const Icon(
                Icons.notifications,
                color: Colors.white,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: Color.fromARGB(255, 77, 15, 88),
                ),
              ),

              //Widget card permettant de faire une sorte
              //de container mais avec des élévations
              const Card(
                elevation: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [Icon(Icons.add), Text("Facture")],
                    ),
                    Column(
                      children: [Icon(Icons.upload), Text("Categorie")],
                    ),
                    Column(
                      children: [Icon(Icons.history), Text("Historique")],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("images/list-Section bar.png"),
                  Image.asset("images/bar-sec 4.png")
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                height: 6,
                color: Colors.grey.withOpacity(0.25),
                width: MediaQuery.of(context).size.width,
              ),

              const SizedBox(
                height: 17,
              ),

              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("Savoir gérer"),
              ),

              const SizedBox(
                height: 13,
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  //   physics: const BouncingScrollPhysics(parent: NeverScrollableScrollPhysics()),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "images/im.png",
                      height: 100,
                    ),
                    Image.asset(
                      "images/im.png",
                      height: 100,
                    ),
                    Image.asset(
                      "images/list-Section bar.png",
                      height: 100,
                    ),
                    Image.asset(
                      "images/im.png",
                      height: 100,
                    ),
                    Image.asset(
                      "images/list-Section bar.png",
                      height: 100,
                    ),
                    Image.asset(
                      "images/im.png",
                      height: 100,
                    ),
                    Image.asset(
                      "images/im.png",
                      height: 100,
                    ),
                    Image.asset(
                      "images/list-Section bar.png",
                      height: 100,
                    ),
                    Image.asset(
                      "images/list-Section bar.png",
                      height: 100,
                    ),
                    Image.asset(
                      "images/im.png",
                      height: 100,
                    ),
                    Image.asset(
                      "images/im.png",
                      height: 100,
                    ),
                    Image.asset(
                      "images/bar-sec 4.png",
                      height: 100,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
