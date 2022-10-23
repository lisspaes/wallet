import 'package:bbva/wallet/administracionTarjeta.dart';
import 'package:bbva/wallet/enlazarTarjeta.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double alto(BuildContext context) => MediaQuery.of(context).size.height;
    double ancho(BuildContext context) => MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(

      //  width: MediaQuery.of(context).size.width*.3,
        //height: MediaQuery.of(context).size.height,
        //alignment: Alignment.bottomCenter,
        child:  Stack(
          children: [

            Container(
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width,
              child: ClipPath(
                clipper: Clip(),
                child: Container(
                  color: Color(0xff3D729E),
                ),
              ),
            ),

            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.all(30.0),
              child: Text("Hola, María",style: TextStyle(color: Colors.white, fontSize: 20, )),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: alto(context)*0.02, top: alto(context)*0.02, left: 0, right:0),
              padding: const EdgeInsets.all(60.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.repeat, color: Colors.white,)),
                      Text("Transferir", style: TextStyle(color: Colors.white, fontSize: 10),)
                    ],
                  ),
                  SizedBox(width: ancho(context)*.02,),
                  Column(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.add, color: Colors.white,)),
                      Text("Oportunidades", style: TextStyle(color: Colors.white, fontSize: 10),)
                    ],
                  ),
                  SizedBox(width: ancho(context)*.02,),
                  Column(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.attach_money, color: Colors.white,)),
                      Text("Retiro sin", style: TextStyle(color: Colors.white, fontSize: 10),),
                      Text("tarjeta", style: TextStyle(color: Colors.white, fontSize: 10),)
                    ],
                  ),
                  SizedBox(width: ancho(context)*.02,),
                  Column(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, color: Colors.white,)),
                      Text("Más", style: TextStyle(color: Colors.white, fontSize: 10),)
                    ],
                  ),

                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom:  0, top: alto(context)*0.2, left: ancho(context)*0.05, right:0),
              //padding: const EdgeInsets.all(60.0),
              width: ancho(context)*0.9,
              height: alto(context)*0.2,
              child: Card(
                elevation: 5,
                shape: BeveledRectangleBorder(
                ),

                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text("CUENTAS EN PESOS", style: TextStyle(color: Colors.grey[500], fontSize: 12, fontWeight: FontWeight.bold)),
                      SizedBox(height: alto(context)*0.01,),
                      Container(
                        width: ancho(context)*0.9,
                        child: Divider(
                          color: Colors.grey[300],
                          thickness: 0.9,


                        ),
                      ),
                      SizedBox(height: alto(context)*0.01,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("00076t117", style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold),),
                              Text("•1165",style: TextStyle(color: Colors.grey[800], fontStyle: FontStyle.italic))
                            ],
                          ),
                          Column(
                            children: [
                              Text("\$400"),
                              Text("Saldo disponible", style: TextStyle(color: Colors.grey[500]))
                            ],
                          )
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom:  0, top: alto(context)*0.45, left: ancho(context)*0.05, right:0),
              //padding: const EdgeInsets.all(60.0),
              width: ancho(context)*0.9,
              height: alto(context)*0.35,
              child: Card(
                elevation: 5,
                shape: BeveledRectangleBorder(
                ),

                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("TARJETAS", style: TextStyle(color: Colors.grey[500], fontSize: 12, fontWeight: FontWeight.bold)),
                          Column(
                            children: [
                              IconButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const EnlazarTarjeta()),
                                    );
                                  },
                                  icon: Icon(Icons.credit_card, color: Colors.blue[900],)
                              ),
                              Text("Enlazar tarjeta", style: TextStyle(fontSize: 12),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: alto(context)*0.01,),
                      Container(
                        width: ancho(context)*0.9,
                        child: Divider(
                          color: Colors.grey[300],
                          thickness: 0.8,


                        ),
                      ),
                      SizedBox(height: alto(context)*0.01,),

                      InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const AdministracionTarjeta()),
                            );
                          },
                          child: Ink(
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Visa Debito", style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold),),
                                    SizedBox(height: alto(context)*0.01,),
                                    const Image(
                                      //height: 10,
                                        width: 50,
                                        image: AssetImage('assets/tarjeta.png')),
                                    SizedBox(height: alto(context)*0.01,),
                                    Text("•1165",style: TextStyle(color: Colors.grey[800], fontStyle: FontStyle.italic))
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Icon(Icons.stay_current_portrait, color: Colors.blue[900], ),
                                ),
                              ],
                            ),
                          )
                      )

                    ],
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

class Clip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height -100,
      size.width,
      size.height-100
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
