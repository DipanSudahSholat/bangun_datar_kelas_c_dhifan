import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KetupatController extends GetxController{
  int d1 =0;
  int d2=0;
  int sisi=0;
  final hasil ="".obs;
  final warna =Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = 0.5 * d1 * d2;
    hasil.value = "Hasil Perhitungan Luas Dari Belah Ketupat $d1 x $d1  x 1/2 Adalah $hitung";
  }
  void hitungKeliling(){
    int hitung = 4 * sisi;
    hasil.value = "Hasil Perhitungan Keliing Dari Belah Ketupat $sisi Adalah $hitung";
  }
}