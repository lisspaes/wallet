import 'package:bbva/wallet/guardarTarjeta.dart';
import 'package:flutter/material.dart';

class Conectar extends StatefulWidget {
  const Conectar({Key? key}) : super(key: key);

  @override
  State<Conectar> createState() => _ConectarState();
}

class _ConectarState extends State<Conectar> {
  double alto(BuildContext context) => MediaQuery.of(context).size.height;
  double ancho(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEDEA),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sucursal", style: TextStyle(fontSize: 15),),
        backgroundColor: Color(0xff3D729E),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*.4,
                width: MediaQuery.of(context).size.width,
                child: ClipPath(
                  clipper: Clip(),
                  child: Container(
                    color: Colors.grey[50],
                  ),
                ),
              ),
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
                    SizedBox(height: alto(context)*0.03,),
                    Container(
                      //margin: EdgeInsets.only(top: alto(context)*0.1, left: ancho(context)*0.05),
                      width: ancho(context)*0.9,
                      child: Divider(
                        color: Colors.grey[300],
                        thickness: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: alto(context)*0.02,),
              Container(

                margin: EdgeInsets.only(top: alto(context)*0.15, left: ancho(context)*0.05),
                  child: Text("CONECTAR NUEVA TARJETA", style: TextStyle(color: Colors.black, fontSize: 20,))
              ),

            ],
          ),
          Container(
            //padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: alto(context)*0.03,),
                Text("TOKEN", style: TextStyle(fontWeight: FontWeight.bold),),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "1247 98769",
                      hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey)
                  ),
                ),
                SizedBox(height: alto(context)*0.03,),
                Container(
                  height: alto(context)*0.05,
                  width: ancho(context)*0.3,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Color.fromRGBO(1, 40, 75, 1)),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GuardarTarjeta()),
                        );
                      },
                      child: Text("Enlazar")
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
