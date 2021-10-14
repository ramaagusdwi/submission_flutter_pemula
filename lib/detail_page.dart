import 'package:flutter/material.dart';

// You can pass any object to the arguments parameter.
// In this example, create a class that contains both
// a customizable title and message.
class DetailArguments {
  final String title;
  final String price;
  final String asset;

  DetailArguments(this.title, this.price, this.asset);
}

class DetailPage extends StatelessWidget {
  final String title;
  final String price;
  final String asset;

  const DetailPage({
    Key? key,
    required this.title,
    required this.price,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              color: Color(0xffF8FAFB),
            ),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0)),
                  child: Image(
                    width: double.infinity,
                    height: (MediaQuery.of(context).size.height) * 0.45,
                    image: AssetImage(asset),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        Expanded(
                          child: Text(
                            "Manfaat dari minuman herbal ini bagus untuk menjaga kesehatan dan imunitas di masa pandemi ini. Selainitu untuk mencegah kanker, mencegah tumor, mengobati lambung,mengobati alergi, anti oksidan, anti radan",
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                letterSpacing: 1.0,
                                height: 1.4),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  onPrimary: Color(0xffF96A0C),
                                  primary: Color(0xffF96A0C),
                                  minimumSize: Size(double.infinity, 60),
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "BELI SEKARANG",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ), //Your widget here,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 315,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                    elevation: 20,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  price,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Card(
                                elevation: 20,
                                color: Color(0xffF96A0C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset(
                                        'assets/shopping_cart.png'))),
                          ],
                        ),
                      ),
                    )),
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //     child: Container(
            //       margin: EdgeInsets.symmetric(horizontal: 30),
            //       child: Column(
            //         children: [
            //           Text(
            //             "Untuk mencegah kanker, mencegah tumor, mengobati lambung, mengobati alergi, anti oksidan, anti radang",
            //             style: TextStyle(
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 16),
            //           ),
            //         ],
            //       ),
            //     )
            // )
          ],
        ),
      ),
    );
  }
}
