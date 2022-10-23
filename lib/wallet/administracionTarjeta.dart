import 'package:bbva/wallet/administracionCobro.dart';
import 'package:flutter/material.dart';

class AdministracionTarjeta extends StatefulWidget {
  const AdministracionTarjeta({Key? key}) : super(key: key);

  @override
  State<AdministracionTarjeta> createState() => _AdministracionTarjetaState();
}

class _AdministracionTarjetaState extends State<AdministracionTarjeta> {
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
                width: ancho(context)*0.9,
                height: alto(context)*0.3,
                child: Card(
                  color: Color.fromRGBO(95, 130, 159, 1),
                  elevation: 5,
                  shape: BeveledRectangleBorder(
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.output, color: Colors.white,),
                            SizedBox(width: ancho(context)*0.02,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Depósitos", style: TextStyle(color: Colors.white),),
                                Text("Sin límites", style: TextStyle(color: Colors.white, fontSize: 10))
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.monetization_on_outlined, color: Colors.white),
                            SizedBox(width: ancho(context)*0.02,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Retiros", style: TextStyle(color: Colors.white),),
                                Row(
                                  children: [
                                    Text("\$0.00 utilizado al día", style: TextStyle(color: Colors.white, fontSize: 10)),
                                    Text("\$100.00 límite al día", style: TextStyle(color: Colors.white, fontSize: 10)),

                                  ],
                                )
                              ],
                            )
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.shopping_bag_outlined, color: Colors.white),
                            SizedBox(width: ancho(context)*0.02,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Compras", style: TextStyle(color: Colors.white),),
                                Row(
                                  children: [
                                    Text("\$0.00 utilizado al día", style: TextStyle(color: Colors.white, fontSize: 10)),
                                    Text("\$100.00 límite al día", style: TextStyle(color: Colors.white, fontSize: 10)),

                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.monetization_on_outlined, color: Colors.white),
                            SizedBox(width: ancho(context)*0.02,),
                            TextButton(onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const AdministracionCobro()),
                              );
                            },
                                child: Text("Sitios de compra establecidos", style: TextStyle(color: Colors.white))
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
                width: ancho(context)*0.9,
                height: alto(context)*0.1,
                child: Card(
                  color: Color.fromRGBO(63, 133, 192, 1),
                  elevation: 5,
                  shape: BeveledRectangleBorder(
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.remove_red_eye_outlined, color: Colors.white,),
                            Text("Ver NIP", style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.enhanced_encryption, color: Colors.white,),
                            Text("Bloqueo y reposición", style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Icon(Icons.edit, color: Colors.white,),
                            Text("Editar Alias", style: TextStyle(color: Colors.white),)
                          ],
                        ),

                      ],
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