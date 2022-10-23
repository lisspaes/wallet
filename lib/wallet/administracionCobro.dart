import 'package:flutter/material.dart';

class AdministracionCobro extends StatefulWidget {
  const AdministracionCobro({Key? key}) : super(key: key);

  @override
  State<AdministracionCobro> createState() => _AdministracionCobroState();
}

class _AdministracionCobroState extends State<AdministracionCobro> {
  @override
  Widget build(BuildContext context) {
    double alto(BuildContext context) => MediaQuery.of(context).size.height;
    double ancho(BuildContext context) => MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("Sucursal", style: TextStyle(fontSize: 15),),
        backgroundColor: Color(0xff3D729E),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: ancho(context),
                    height: alto(context)*0.2,
                    color: Color(0xff3D729E),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.credit_card, color: Colors.white),
                      SizedBox(width: ancho(context)*0.1),
                      Text("Enlazar Tarjeta", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),

                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: alto(context)*0.08, left: ancho(context)*0.05),
                      child: Text("Enlazar Tarjeta", style: TextStyle(color: Colors.white, fontSize: 15))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: alto(context)*0.15),
                    alignment: Alignment.center,
                    height: alto(context)*0.1,
                    child: Image.asset("assets/tarjeta.png"),
                  )

                ],
              ),

              Container(
                alignment: Alignment.bottomCenter,
                // margin: EdgeInsets.only(bottom:  0, top: alto(context)*0.2, left: ancho(context)*0.05, right:0),
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

                        Text("SITIOS DE COMPRA ESTABLECIDO", style: TextStyle(color: Colors.grey[500], fontSize: 12, fontWeight: FontWeight.bold)),
                        Container(
                          width: ancho(context)*0.9,
                          child: Divider(
                            color: Colors.grey[300],
                            thickness: 0.8,
                          ),
                        ),
                        SizedBox(height: alto(context)*0.01,),
                      


                      ],
                    ),
                  ),

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}