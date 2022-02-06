import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_kullanimi/SayacModel.dart';

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<SayacModel>(
                builder: (context,sayacModelNesne,child){
                  return  Text("${sayacModelNesne.sayaciOku()}");
                }
                ),
            Consumer<SayacModel>(
                builder: (context,sayacModelNesne,child){
                  return  ElevatedButton(onPressed: (){
                    sayacModelNesne.sayaciAzalt(2);

                  }, child: Text("Sayaç azalt"));
                }
            ),
            Consumer<SayacModel>(
                builder: (context,sayacModelNesne,child){
                  return  ElevatedButton(onPressed: (){
                    sayacModelNesne.sayaciArttir();

                  }, child: Text("Sayaç arttır"));
                }
            ),




          ],
        ),
      ),

    );
  }
}
