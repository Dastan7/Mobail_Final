import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoeshoppingapp/Component/defaultElements.dart';
import 'package:shoeshoppingapp/Models/GuitarListModel.dart';
import 'package:shoeshoppingapp/Screens/DetailScreen.dart';

class Itemcards extends StatelessWidget {
  final GuitarListModel guitarListModel;

  final int index;

  const Itemcards({Key key, this.guitarListModel, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(
                            showimage: guitarListModel.showimage,
                            price: guitarListModel.price,
                            showName: guitarListModel.showName,
                            rating: guitarListModel.rating,
                            showpersentage: guitarListModel.showpersentage,
                            activeheart: guitarListModel.activeheart,
                            persentage: guitarListModel.persentage,
                            showcasebgcolor: guitarListModel.showcasebgcolor,
                            lightShowcasebgcolor:
                                guitarListModel.lightShowcasebgcolor,
                          )));
              print("Navigate to Detail Paage");
            },
            child: Container(
              // now we dont want this fix height and width it was for demo
              // height: 220,
              // width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: DefaultElements.knavbariconcolor,
                      offset: Offset(0, -1),
                      blurRadius: 10)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8,
                      right: 8,
                      left: 8,
                    ),
                    child: Row(
                      children: [
                        guitarListModel.showpersentage
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, right: 8, left: 8),
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: DefaultElements.ksecondrycolor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "${guitarListModel.persentage}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                        Expanded(
                          child: Container(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              color: guitarListModel.activeheart
                                  ? DefaultElements.kdefaultredcolor
                                  : Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/icons/heart.svg",
                                height: 20,
                                color: guitarListModel.activeheart
                                    ? Colors.white
                                    : DefaultElements.knavbariconcolor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: guitarListModel.showcasebgcolor,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                color: guitarListModel.showcasebgcolor,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 5,
                        left: 0,
                        child: Hero(
                          tag: "${guitarListModel.showimage}",
                          child: Image.asset(
                            "${guitarListModel.showimage}",
                            height: 110,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${guitarListModel.showName}",
                    style: TextStyle(
                      color: DefaultElements.kprimarycolor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${guitarListModel.price}",
                    style: TextStyle(
                      color: DefaultElements.kprimarycolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
