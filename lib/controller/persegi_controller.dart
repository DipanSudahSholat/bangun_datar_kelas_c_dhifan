import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil ="".obs;
  final warna =Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = sisi*sisi;
    hasil.value = "Hasil Perhitungan Luas Dari Sisi $sisi Adalah $hitung";
  }
  void hitungKeliling(){
    int hitung = (4 * sisi);
    hasil.value = "Hasil Perhitungan Luas Dari Sisi $sisi Adalah $hitung";
  }
}