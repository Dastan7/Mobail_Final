import 'package:flutter/material.dart';
import 'package:shoeshoppingapp/Component/defaultElements.dart';

class GuitarListModel {
  String showimage;
  String persentage;
  String showName;
  String price;
  String rating;
  bool showpersentage;
  bool activeheart;
  Color showcasebgcolor;
  Color lightShowcasebgcolor;

  GuitarListModel({
    this.showimage,
    this.persentage,
    this.showName,
    this.price,
    this.rating,
    this.showpersentage = false,
    this.activeheart = false,
    this.showcasebgcolor,
    this.lightShowcasebgcolor,
  });
}

List<GuitarListModel> guitarListModel = [
  GuitarListModel(
    showcasebgcolor: DefaultElements.kshoebgcolorpink,
    lightShowcasebgcolor: DefaultElements.lightShowcasebgcolorpink,
    showimage: "assets/images/111.png",
    persentage: "30%",
    showName: "Schecter Omen-6",
    price: "\$" + "550.00",
    rating: "(4.5)",
    showpersentage: true,
    activeheart: false,
  ),
  GuitarListModel(
    showcasebgcolor: DefaultElements.kshoebgcolorblue,
    lightShowcasebgcolor: DefaultElements.lightShowcasebgcolorblue,
    showimage: "assets/images/222.png",
    persentage: "30%",
    showName: "Aria TG 1 SBL Blue",
    price: "\$" + "220.00",
    rating: "(3.0)",
    showpersentage: false,
    activeheart: true,
  ),
  GuitarListModel(
    showcasebgcolor: DefaultElements.kshoebgcolorgreen,
    lightShowcasebgcolor: DefaultElements.lightShowcasebgcolorgreen,
    showimage: "assets/images/444.png",
    persentage: "30%",
    showName: "Gibson 70 Flying V",
    price: "\$" + "1,999.00",
    rating: "(0.0)",
    showpersentage: false,
    activeheart: false,
  ),
  GuitarListModel(
    showcasebgcolor: DefaultElements.kshoebgcoloryellow,
    lightShowcasebgcolor: DefaultElements.lightShowcasebgcoloryellow,
    showimage: "assets/images/333.png",
    persentage: "40%",
    showName: "Yamaha FG3",
    price: "\$" + "160.00",
    rating: "(4.8)",
    showpersentage: true,
    activeheart: false,
  ),
];
