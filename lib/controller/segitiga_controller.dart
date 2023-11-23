import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas =0;
  int tinggi=0;
  int sisi=0;
  final hasil ="".obs;
  final warna =Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = 0.5 * (alas * tinggi);
    hasil.value = "Hasil Perhitungan Luas Dari Segitiga $alas x $tinggi x 1/2 Adalah $hitung";
  }
  void hitungKeliling(){
    int hitung = sisi + sisi + sisi;
    hasil.value = "Hasil Perhitungan Keliing Dari Segitiga Sisi $sisi Adalah $hitung";
  }
}