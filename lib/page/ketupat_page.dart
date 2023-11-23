import 'package:bangun_datar_kelas_c/controller/ketupat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KetupatPage extends StatelessWidget {
  KetupatPage({super.key});
  final KetupatController _ketupatController=Get.put(KetupatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belah Ketupat Page"),
      ),
      body: Column(
        children: [
          Image.asset(
              "assets/belah ketupat.png"
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Belah Ketupat"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            decoration: BoxDecoration(color: Colors.indigo.shade500, borderRadius: BorderRadius.all(Radius.circular(8))),

            child: Text("Belah ketupat adalah bangun datar dua dimensi yang dibentuk oleh empat buah segitiga siku siku masing-masing sama besar dengan sudut di hadapannya.",style: TextStyle(color: Color(0xFFFCF1B2)),
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
                      _ketupatController.d1 = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "D1",
                      hintText: "Masukkan D1",
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
                      _ketupatController.d2 = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "D2",
                      hintText: "Masukkan D2",
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
                      _ketupatController.sisi = int.parse(value);
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
                          _ketupatController.hitungLuas();
                        }, child: Text("Hitung Luas")),
                      ),
                      ElevatedButton(onPressed: (){
                        _ketupatController.hitungKeliling();
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
                _ketupatController.hasil.value,
                style: TextStyle(color: _ketupatController.warna.value),
              )))
        ],
      ),
    );
  }
}
