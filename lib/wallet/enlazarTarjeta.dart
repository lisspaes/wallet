
import 'package:bbva/wallet/conectar.dart';
import 'package:flutter/material.dart';

class EnlazarTarjeta extends StatefulWidget {
  const EnlazarTarjeta({Key? key}) : super(key: key);

  @override
  State<EnlazarTarjeta> createState() => _EnlazarTarjetaState();
}

class _EnlazarTarjetaState extends State<EnlazarTarjeta> {
  double alto(BuildContext context) => MediaQuery.of(context).size.height;
  double ancho(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sucursal", style: TextStyle(fontSize: 15),),
        backgroundColor: Color(0xff3D729E),
      ),
      body: Container(
        //padding: EdgeInsets.only(top: 20),
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.credit_card, color: Colors.blue[900]),
                SizedBox(width: ancho(context)*0.1),
                Text("Enlazar Tarjeta", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),

              ],
            ),
            SizedBox(height: alto(context)*0.01,),
            Container(
              width: ancho(context)*0.8,
              child: Divider(
                color: Colors.grey[300],
                thickness: 0.9,


              ),
            ),

            Container(
              height: alto(context)*0.1,
              child: TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Conectar()),
                    );
                  },
                  child: Text("TARJETA COMPARTIDA", style: TextStyle(color: Colors.black, fontSize: 20,)
              ),
              ),
            ),
            Container(
              width: ancho(context)*0.8,
              child: Divider(
                color: Colors.grey[300],
                thickness: 0.9,


              ),
            ),

          ],
        ),
      ),
    );
  }
}
