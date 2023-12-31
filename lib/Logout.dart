//import 'dart:js';

//import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_app/utils/routes.dart';

class LogoutAlert extends StatefulWidget {
  const LogoutAlert({Key? key}) : super(key: key);

  @override
  _LogoutAlertState createState() => _LogoutAlertState();
}

class _LogoutAlertState extends State<LogoutAlert> {
  final bgcolor = Color(0xFF08db5c);
  bool tappedYes = false;
  final colorBright = Color(0xFF08db5c);
  get async => null;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgcolor,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
          color: Colors.grey[200],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0.0001),
                    child: Container(
                      height: 37,
                      width: 350,
                      color: Colors.grey[350],
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://icon-library.com/images/my-orders-icon/my-orders-icon-9.jpg",
                            height: 25,
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'My Order',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, top: 14),
                    child: Row(
                      children: [
                        Image.network(
                          "https://png.pngitem.com/pimgs/s/146-1466755_nearby-transparent-background-address-icon-hd-png-download.png",
                          height: 25,
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "My Address",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Container(
                    height: 2,
                    width: 350,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sale and Offers",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 19),
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13, left: 2),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-kE6i0heJMXCebKP3akhhK8jIcf9vv96SJJD4l-F_PL72UIF35PiR6EawzFE9AyHB8Hs&usqp=CAU",
                                height: 25,
                                width: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  "Offers",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 19),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Container(
                    height: 2,
                    width: 350,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 19),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Others",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 19),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, top: 12),
                    child: Row(
                      children: [
                        Image.network(
                          "https://www.pngkey.com/png/full/965-9654288_png-file-svg-chat-icon-vector-white.png",
                          height: 25,
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Chat with Us",
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, top: 12),
                    child: Row(
                      children: [
                        Image.network(
                          "https://toppng.com/uploads/preview/file-svg-transparent-star-icon-11563055585lnti7ukeko.png",
                          height: 25,
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Starred Items",
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, top: 11),
                    child: Row(
                      children: [
                        Image.network(
                          "https://cdn3.iconfinder.com/data/icons/virtual-notebook/16/button_share-512.png",
                          height: 25,
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Share & Earn",
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 9),
                    child: Row(
                      children: [
                        Image.network(
                          "http://cdn.onlinewebfonts.com/svg/img_218367.png",
                          height: 25,
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "About Us",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
                //  Padding(
                //   padding: const EdgeInsets.only(left: 22,top: 8),
                // child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                //  children: [
                //   Padding(padding: const EdgeInsets.only(top: 11),
                //   child:
                //   Image.network("https://cdn2.iconfinder.com/data/icons/flaticons-stroke/16/logout-1-512.png",height: 25,width: 30,),
                //  ),
                InkWell(
                  //highlightColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22, top: 17),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://cdn2.iconfinder.com/data/icons/flaticons-stroke/16/logout-1-512.png",
                          height: 25,
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Logout",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () async {
                    final action = await Alert_Dialog.yesCancelDialog(
                      context,
                      '              LOGOUT  ',
                      '   Are you sure , want to logout ?',
                    );

                    if (action == DialogAction.yes) {
                      Navigator.pushNamed(context, MyRoutes.signin);
                    } else {
                      setState(() =>
                          //exit(0),
                          tappedYes = false);
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 2,
                    width: 350,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum DialogAction { yes, Cancel }

// ignore: camel_case_types
class Alert_Dialog {
  static Future<DialogAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false, //have to tap one
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: Text(title),
            content: Text(body),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 2, right: 90, bottom: 15),
                child: Container(
                  height: 35, width: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red),
                  //color: Colors.red,
                  child: TextButton(
                    onPressed: () =>
                        Navigator.of(context).pop(DialogAction.Cancel),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text("No",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17, bottom: 15),
                child: Container(
                  height: 35, width: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xFF08db5c)),
                  //color: Color(0xFF08db5c),
                  child: TextButton(
                    onPressed: () =>
                        Navigator.of(context).pop(DialogAction.yes),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text("Yes",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
    return (action != null) ? action : DialogAction.Cancel;
  }
}
