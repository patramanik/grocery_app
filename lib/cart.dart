import 'package:flutter/material.dart';

class Mycart extends StatefulWidget {
  const Mycart({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MycartState createState() => _MycartState();
}

class _MycartState extends State<Mycart> {
  Color bgcolor = const Color(0xFF08db5c);
  List<String> img = [
    'https://i.ibb.co/WvpxCSy/61p-Bq-Rts-NGS-SX679.jpg',
    'https://i.ibb.co/WvpxCSy/61p-Bq-Rts-NGS-SX679.jpg',
    'https://i.ibb.co/WvpxCSy/61p-Bq-Rts-NGS-SX679.jpg',
  ];
  List<String> price = ['₹180.00', '₹160.00', '₹100.00'];
  List<String> name = ['Sticky Rice', 'Sticky Rice', 'Sticky Rice'];
  //List<String> off = [' 20% OFF', ' 20% OFF', ' 20% OFF'];
  List<String> dprice = ['₹200', '₹200', '₹120'];
  List<String> weigth = ['1.00 kg', '2.00kg', '2.00kg'];

  @override
  Widget build(BuildContext context) {
    List<int> total = [];
    for (int i = 0; i <= 5; i++) {
      int sum = 20;
      total.add(sum);
    }
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: bgcolor,
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 50),
          )
        ],
        title: const Center(
          child: Column(
            children: [
              Text(" My Cart"),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  "2 items",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Column(
                children: List.generate(
              img.length,
              (index) => Container(
                height: 140,
                margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 10.0,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      //imgage
                      children: [
                        Image.network(
                          img[index],
                          height: 140.0,
                          width: 110.0,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            //price;
                            children: [
                              const Padding(
                                  padding:
                                      EdgeInsets.symmetric(vertical: 25)),
                              Text(
                                price[index],
                                style: TextStyle(
                                    color: bgcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                dprice[index],
                                style: const TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 19.0),
                              ),
                              const SizedBox(
                                width: 30.0,
                              ),
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(2.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Center(
                                        child: Text(
                                      "  ${total[index]}% OFF  ",
                                      style: const TextStyle(color: Colors.white),
                                    )),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 90.0),
                                child: Text(
                                  name[index],
                                  style: const TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //weight
                            children: [
                              Card(
                                child: SizedBox(
                                  height: 20.0,
                                  child: Center(
                                      child: Text(
                                    "  ${weigth[index]}  ",
                                    style: TextStyle(
                                      color: bgcolor,
                                    ),
                                  )),
                                ),
                              ),
                              const SizedBox(
                                width: 50.0,
                              ),
                              Card(
                                child: Container(
                                  height: 30.0,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: bgcolor,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0),
                                      )),
                                  child: const Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                    // style: TextStyle(
                                    //     color: Colors.white, fontSize: 25),
                                  ),
                                ),
                              ),
                              const Text("   1   "),
                              Card(
                                child: Container(
                                  height: 30.0,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: bgcolor,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(5.0),
                                      )),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )
                                      // style: TextStyle(
                                      //     color: Colors.white, fontSize: 25),
                                      ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
            Container(
              height: 290,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    const Text(
                      "Bill Details",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    const Text(
                      "Total                                                            490.00",
                      style: TextStyle(fontSize: 17),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    const Text(
                        "Products Discount                                      89.00",
                        style: TextStyle(fontSize: 17)),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    const Text(
                        "Delivery Charges                                           0.00",
                        style: TextStyle(fontSize: 17)),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    const Text(
                        "CGST                                                               0.00",
                        style: TextStyle(fontSize: 17)),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    const Text(
                        "IGST                                                                0.00",
                        style: TextStyle(fontSize: 17)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: Container(
                        height: 2,
                        width: w,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                        "Total Pay                                                     401.00",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
