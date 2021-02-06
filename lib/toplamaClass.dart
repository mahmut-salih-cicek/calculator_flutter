import 'package:flutter/material.dart';

class toplamaClass extends State {
  int BosSonuc = 0;
  int birinciSayi = 0;
  int ikinciSayi = 0;
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar( 
        brightness: Brightness.light,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
       title: const Text('Flutter Calculator', 
       style: TextStyle(
    color: Colors.black
  )),
  ),
  body: Center(
    child: Container(
       margin: new EdgeInsets.only(
         left: 35,
         right: 35,
         top: 100,
       ),
      child: Column(
        children: [


          ///// text field 1
          Column(children: [ 
            TextField( 
              /////  TEXT FİELD DAN GELEN SAYIYI DEGİSKENE ATADIK !!!!
              onChanged: (sayi){
                 birinciSayi = int.parse(sayi);
              },

              keyboardType: TextInputType.number,
            textAlign: TextAlign.left,
             decoration: InputDecoration(
               hintText: "Enter Primary Number",
             border: OutlineInputBorder()
             )
            )
          ],),


          ///// text field 2
         Column(children: [ 
           Padding(padding: EdgeInsetsDirectional.only(
            top: 50,
           )),
            TextField( 
              onChanged: (sayi2){
                 
                 ikinciSayi = int.parse(sayi2);
              },
            textAlign: TextAlign.left,
             decoration: InputDecoration(
               hintText: "Enter Second Number",
             border: OutlineInputBorder()
             )
            )
          ],),

         

        ////////// Toplama Raised BUTTON
         Column(children: [
          Padding(padding: EdgeInsetsDirectional.only(
            top: 60,
          )),
           RaisedButton( 
      
                elevation: 5,
                color: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.transparent)),
                child: Row(
                  children: [
                    Text("+",style: TextStyle(fontSize: 20),),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(" Addition ", style: TextStyle(fontSize: 16),),
                    
                  ],
                ),
                onPressed: () {
                   setState(() {
                   BosSonuc = birinciSayi+ikinciSayi;
                  });
                },
              ),
              
         ],),

         /////// ÇIKARMA RAİSED BUTTON
        Column(
          children: [
            Padding(padding: EdgeInsetsDirectional.only(
            top: 20,
            )),
            RaisedButton( 
      
                elevation: 5,
                color: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.transparent)),
                child: Row(
                  children: [
                    Text("+",style: TextStyle(fontSize: 20),),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(" Substraction ", style: TextStyle(fontSize: 16),),
                    
                  ],
                ),
                onPressed: () {
                   setState(() {
                   BosSonuc = birinciSayi-ikinciSayi;
                  });
                },
              ),
          ],
        ),

        ///////  Çarpma İŞLEMİ FONK
        Column(
          children: [
            Padding(padding: EdgeInsetsDirectional.only(
              top: 20,
            )),
            RaisedButton( 
      
                elevation: 5,
                color: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.transparent)),
                child: Row(
                  children: [
                    Text("+",style: TextStyle(fontSize: 20),),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(" Multiplation ", style: TextStyle(fontSize: 16),),
                    
                  ],
                ),
                onPressed: () {
                   setState(() {
                   BosSonuc = birinciSayi*ikinciSayi;
                  });
                },
              ),
          ],
        ),
       
        ////// BOLME İŞLEMİ FONK
        Column(
          children: [
            Padding(padding: EdgeInsetsDirectional.only(
              top: 20,
            )),
            RaisedButton( 
      
                elevation: 5,
                color: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.transparent)),
                child: Row(
                  children: [
                    Text("+",style: TextStyle(fontSize: 20),),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(" Dividetion ", style: TextStyle(fontSize: 16),),
                    
                  ],
                ),
                onPressed: () {
                   setState(() {
                   BosSonuc = (birinciSayi ~/ ikinciSayi) as int; 
                  });
                },
              ),
             
          ],
        ),

        //////// Sonuc Text 
        Column(
          children: [
            Padding(padding: EdgeInsetsDirectional.only(
              top: 50,
            )),
            Text("Sonuc: $BosSonuc",
            
            style: TextStyle(fontSize: 20,),
            ),
          ],
        ),


        ],//// children sonu
    ),
    ),
  ),
    );
  }
}







