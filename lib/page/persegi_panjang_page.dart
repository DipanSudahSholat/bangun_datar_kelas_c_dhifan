import 'package:bangun_datar_kelas_c/controller/persegi_panjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({super.key});
  final PersegiPanjangController _persegiPanjangController=Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Panjang Page"),
      ),
      body: Column(
        children: [
          Image.asset(
              "assets/persegi panjang.png"
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Persegi Panjang"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
            decoration: BoxDecoration(color: Colors.indigo.shade500, borderRadius: BorderRadius.all(Radius.circular(8))),

            child: Text("Persegi panjang adalah suatu segi empat yang keempat sudutnya siku-siku"
                "dan panjang sisi-sisi yang berhadapan sama.",style: TextStyle(color: Color(0xFFFCF1B2)),
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
                      _persegiPanjangController.lebar = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Lebar",
                      hintText: "Masukkan Lebar",
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
    _persegiPanjangController.panjang = int.parse(value);
    },
    decoration: InputDecoration(
    fillColor: Colors.white,
    filled: true,
    labelText: "Panjang",
    hintText: "Masukkan Panjang",
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
                          _persegiPanjangController.hitungLuas();
                        }, child: Text("Hitung Luas")),
                      ),
                      ElevatedButton(onPressed: (){
                        _persegiPanjangController.hitungKeliling();
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
                _persegiPanjangController.hasil.value,
                style: TextStyle(color: _persegiPanjangController.warna.value),
              )))
        ],
      ),
          );
  }
}
