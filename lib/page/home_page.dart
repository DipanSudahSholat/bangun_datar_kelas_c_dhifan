import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFCF1B2)),
        ),
        backgroundColor: Colors.indigo.shade500,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: CustomMenu(title: "PERSEGI",imageAsset: "assets/persegi.png",)),
                Expanded(child: CustomMenu(title: "PERSEGI PANJANG",imageAsset: "assets/persegi panjang.png",)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CustomMenu(title: "SEGITIGA",imageAsset: "assets/segitiga.png",)),
                Expanded(child: CustomMenu(title: "BELAH KETUPAT",imageAsset: "assets/belah ketupat.png",)),
              ],
            ),
          )
        ],
      )
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,required this.imageAsset, required this.title,
  });
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.symmetric(
                horizontal: 7, vertical: 7),
            padding: EdgeInsets.symmetric(
                horizontal: 7, vertical: 7),
            decoration: BoxDecoration(
              color: Colors.indigo.shade500,
            borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imageAsset, height: 100,),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title, style: TextStyle(color: Color(0xFFFCF1B2))),
             ),
            ],
            ));
           }
}
