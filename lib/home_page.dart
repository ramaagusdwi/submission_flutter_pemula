import 'package:flutter/material.dart';

import 'constant.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  late BuildContext mContext;

  @override
  Widget build(BuildContext context) {
    mContext = context;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xffF8FAFB),
          child: Padding(
            padding: const EdgeInsets.only(
                bottom: 0.0, left: 16, right: 16, top: 30),
            child: ListView(
              shrinkWrap: true,
              children: [
                buildCard("Temulawak", "Rp 5.000", "ID-001",
                    asset: 'assets/temulawak_1.jpg'),
                SizedBox(
                  height: 16,
                ),
                buildCard("Temulawak Jahe", "Rp 6.000", "ID-002",
                    asset: 'assets/temulawak_jahe.jpg'),
                SizedBox(
                  height: 16,
                ),
                buildCard("Kunyit Asem", "Rp 5.000", "ID-003",
                    asset: "assets/kunyit_asem.jpg"),
                SizedBox(
                  height: 16,
                ),
                buildCard("Kunyit Putih Temulawak", "Rp 5.000", "ID-004",
                    asset: "assets/kunyit_putih_temulawak.jpg"),
                SizedBox(
                  height: 16,
                ),
                buildCard("Beras Kencur", "Rp 7.000", "ID-005",
                    asset: "assets/beras_kencur.jpg"),
                SizedBox(
                  height: 16,
                ),
                buildCard("Jahe Sereh", "Rp 6.000", "ID-006",
                    asset: "assets/jahe_sereh.jpg"),
                SizedBox(
                  height: 16,
                ),
                buildCard("Herbal Empon", "Rp 7.000", "ID-007",
                    asset: "assets/herbal_empon.jpg"),
                SizedBox(
                  height: 16,
                ),
                buildCard("Sinom Segar", "Rp 5.000", "ID-008",
                    asset: "assets/sinom_segar.jpg")
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(String title, String harga, String id, {String? asset}) {
    return InkWell(
      onTap: () {
        // When the user taps the button, navigate
        // to a named route and provide the arguments
        // as an optional parameter.
        Navigator.pushNamed(
          mContext,
          detailRoute,
          arguments: DetailArguments(title, harga, asset!),
        );
      },
      child: Card(
        elevation: 20,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // if you need this
        ),
        child: Container(
          padding: EdgeInsets.all(24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  width: 80,
                  height: 80,
                  image: AssetImage(asset!),
                  // fit: BoxFit.fill,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Minuman Herbal',
                      style: TextStyle(
                          color: Color(0xffF96A0C),
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Column(
                children: [
                  Text(
                    harga,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    id,
                    style: TextStyle(
                        color: Color(0xffECA670),
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
