import 'package:flutter/material.dart';

class Page3  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/3.jpg",
              width: 280.0,
            ),


            Text(
              "Besoin d'une estimation?",
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                letterSpacing: 2.5,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(

                leading: Icon(
                  Icons.euro_symbol,
                  color: Colors.blue,
                ),

                title: Text(

                  "Déterminer le bon prix  est la première étape d'une transaction réussie."
                //  "J'utilise une méthode professionnelle basée sur un diagnostic complet de votre maison/appartement et une analyse du marché et de la concurrence."
                      ,
                  textAlign: TextAlign.justify,
                  style: TextStyle(

                    fontFamily: 'Source Sans Pro',
                    fontSize: 12.0,
                    letterSpacing: 2.5,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,

                  ),

                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(

                leading: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),

                title: Text(


                    "J'utilise une méthode professionnelle basée sur un diagnostic complet de votre bien. Une analyse du marché et de la concurrence est également réalisée."
                  ,
                  textAlign: TextAlign.justify,
                  style: TextStyle(

                    fontFamily: 'Source Sans Pro',
                    fontSize: 12.0,
                    letterSpacing: 2.5,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,

                  ),

                ),
              ),
            ),

            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(

                leading: Icon(
                  Icons.school,
                  color: Colors.blue,
                ),

                title: Text(


                  "Avec plus de 10 ans d'expérience au Grand-Duché, RE/MAX est expert du marché immobilier luxembourgeois. "
                  ,
                  textAlign: TextAlign.justify,
                  style: TextStyle(

                    fontFamily: 'Source Sans Pro',
                    fontSize: 12.0,
                    letterSpacing: 2.5,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,

                  ),

                ),
              ),
            ),


          ],
        ),
      ),
    );
  }



}
