import 'package:bangun_datar_kelas_c/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});
  final SegitigaController _segitigaController=Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segitiga Page"),
      ),
      body: Column(
        children: [
          Image.asset(
              "assets/segitiga.png"
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Segitiga"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            decoration: BoxDecoration(color: Colors.indigo.shade500, borderRadius: BorderRadius.all(Radius.circular(8))),

            child: Text("Segitiga merupakan bangun datar yang dibatasi dengan adanya tiga buah sisi serta memiliki tiga buah titik sudut.",style: TextStyle(color: Color(0xFFFCF1B2)),
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
                      _segitigaController.alas = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Alas",
                      hintText: "Masukkan Alas",
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                  child: TextFormField(
                    onChanged: (String value){
                      _segitigaController.tinggi = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Tinggi",
                      hintText: "Masukkan Tinggi",
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                  child: TextFormField(
                    onChanged: (String value){
                      _segitigaController.sisi = int.parse(value);
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
                          _segitigaController.hitungLuas();
                        }, child: Text("Hitung Luas")),
                      ),
                      ElevatedButton(onPressed: (){
                        _segitigaController.hitungKeliling();
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
                _segitigaController.hasil.value,
                style: TextStyle(color: _segitigaController.warna.value),
              )))
        ],
      ),
    );
  }
}
