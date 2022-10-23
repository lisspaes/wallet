import 'package:bbva/wallet/guardarTarjeta.dart';
import 'package:flutter/material.dart';

class GuardarTarjeta extends StatefulWidget {
  const GuardarTarjeta({Key? key}) : super(key: key);

  @override
  State<GuardarTarjeta> createState() => _GuardarTarjetaState();
}

class _GuardarTarjetaState extends State<GuardarTarjeta> {
  double alto(BuildContext context) => MediaQuery.of(context).size.height;
  double ancho(BuildContext context) => MediaQuery.of(context).size.width;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sucursal", style: TextStyle(fontSize: 15),),
        backgroundColor: Color(0xff3D729E),
      ),
      body: ListView(
        children: [
          Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: alto(context)*0.03,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.credit_card, color: Colors.blue[900]),
                      SizedBox(width: ancho(context)*0.1),
                      Text("Enlazar Tarjeta", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: alto(context)*0.04,),

                  Text("CONECTAR NUEVA TARJETA", style: TextStyle(color: Colors.black, fontSize: 20,)),
                  SizedBox(height: alto(context)*0.03),

                  Container(
                    //margin: EdgeInsets.only(top: alto(context)*0.1, left: ancho(context)*0.05),
                    width: ancho(context)*0.9,
                    child: Divider(
                      color: Colors.grey[300],
                      thickness: 0.8,
                    ),
                  ),
                  SizedBox(height: alto(context)*0.01),

                  Container(
                    alignment: Alignment.bottomCenter,
                   //margin: EdgeInsets.only(bottom:  0, top: alto(context)*0.45, left: ancho(context)*0.05, right:0),
                    width: ancho(context)*0.9,
                    height: alto(context)*0.18,
                    child: Card(
                      elevation: 5,
                      shape: BeveledRectangleBorder(
                      ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [

                              Text("CUENTAS VISA DEBITO", style: TextStyle(color: Colors.grey[500], fontSize: 12, fontWeight: FontWeight.bold)),
                              SizedBox(height: alto(context)*0.01,),
                              Container(
                                width: ancho(context)*0.9,
                                child: Divider(
                                  color: Colors.grey[300],
                                  thickness: 0.8,


                                ),
                              ),
                              //SizedBox(height: alto(context)*0.01,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text("Titular", style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold),),
                                      SizedBox(height: alto(context)*0.01,),
                                      Text("•00076t117",style: TextStyle(color: Colors.grey[800], fontStyle: FontStyle.italic))
                                    ],
                                  ),
                                  const Image(
                                    //height: 10,
                                      width: 80,
                                      image: AssetImage('assets/tarjeta.png')
                                  ),
                                ],
                              )

                            ],
                          ),
                        ),

                    ),
                  ),


                ],
              ),
            ),
          Container(
            //padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: alto(context)*0.03,),
                Text("Guardar como", style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: alto(context)*0.02,),
                Text("Nombre:", style: TextStyle(fontWeight: FontWeight.bold),),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: "Pedro Sánchez",
                      hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey)
                  ),
                ),
                SizedBox(height: alto(context)*0.02),
                Text("Alias:", style: TextStyle(fontWeight: FontWeight.bold),),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: "Abuelo",
                      hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey)
                  ),
                ),
                SizedBox(height: alto(context)*0.03,),
                Container(
                  height: alto(context)*0.2,
                  width: ancho(context)*0.5,
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Color(0xff3D729E),

                        value: isChecked, onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;

                        });
                      },),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Color.fromRGBO(1, 40, 75, 1)),
                          onPressed: (){
                            Navigator.of(context).popUntil((route) => route.isFirst);
                          },
                          child: Text("Guardar tarjeta")
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),

        ],

      ),
    );
  }

}


class Clip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height-50);
    path.quadraticBezierTo(
        size.width * 0.5,
        size.height-100,
        size.width,
        size.height-150
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
