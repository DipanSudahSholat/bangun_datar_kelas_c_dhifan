import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int panjang =0;
  int lebar=0;
  final hasil ="".obs;
  final warna =Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = panjang * lebar;
    hasil.value = "Hasil Perhitungan Luas Dari Sisi $panjang dan $lebar Adalah $hitung";
  }
  void hitungKeliling(){
    int hitung = 2 * (panjang + lebar);
    hasil.value = "Hasil Perhitungan Keliing Dari Sisi $panjang dan $lebar Adalah $hitung";
  }
}