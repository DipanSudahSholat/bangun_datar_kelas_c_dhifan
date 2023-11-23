import 'package:bangun_datar_kelas_c/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
      PersegiPage({super.key});
      final PersegiController _persegiController=Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Page"),
      ),
      body: Column(
        children: [
          Image.asset(
              "assets/persegi.png"
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Persegi"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            decoration: BoxDecoration(color: Colors.indigo.shade500, borderRadius: BorderRadius.all(Radius.circular(8))),

            child: Text("Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk"
                        "display style yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku.",style: TextStyle(color: Color(0xFFFCF1B2)),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            decoration: BoxDecoration(color: Colors.indigo.shade500, borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                  child: TextFormField(
                    onChanged: (String value){
                      _persegiController.sisi = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Sisi",
                      hintText: "Masukkan Sisi",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                    child: ElevatedButton(onPressed: (){
                        _persegiController.hitungLuas();
                      }, child: Text("Hitung Luas")),
                  ),
                      ElevatedButton(onPressed: (){
                        _persegiController.hitungKeliling();
                      }, child: Text("Hitung Keliling")),
                 ]
                ),
              ],
            ),
          ),
        Container(
            decoration: BoxDecoration(
                color: Colors.indigo.shade500,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            padding: const EdgeInsets.all(50.0),
            margin: const EdgeInsets.all(20.0),
            child: Obx(() => Text(
              _persegiController.hasil.value,
              style: TextStyle(color: _persegiController.warna.value),
            )))
    ],
    ),
      );
  }
}
