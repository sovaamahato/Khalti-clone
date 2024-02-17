import 'package:flutter/material.dart';
import 'package:khalti_clone/Pages/HomePage.dart';
import 'package:khalti_clone/Pages/dashborad.dart';
import 'package:khalti_clone/Pages/qr/result_screen.dart';
import 'package:khalti_clone/Pages/qr/show_my_qr_page.dart';
//import 'package:khalti_clone/components/colors.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRPage extends StatefulWidget {
  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  // void Function()? onPressed;

  bool isScanCompleted = false;
  void closeScreen() {
    isScanCompleted = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 80, 20, 91),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 80, 20, 91),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => DashBoard(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: Container(
              child: Column(
                children: [
                  Container(
                    height: 130,
                    width: 150,
                    child: Image.asset(
                      "lib/images/khaltiLogo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // Text(
                  //   "Place QR Code in this area",
                  //   style: TextStyle(
                  //       color: Colors.black, fontWeight: FontWeight.bold),
                  // ),
                  Text(
                    "Please align the QR within this frame",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )),
            Container(
              height: MediaQuery.of(context).size.height / 4.5,
              width: MediaQuery.of(context).size.width - 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Colors.black,
              ),
              child: MobileScanner(
                onDetect: (capture) {
                  if (!isScanCompleted) {
                    final List<Barcode> barcodes = capture.barcodes;

                    for (final barcode in barcodes) {
                      String code = barcode.rawValue ?? "...";
                      isScanCompleted = true;
                      print(barcode.rawValue ?? "No Data found in QR");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => ResultScreen(
                                    closeScreen: closeScreen,
                                    code: code,
                                  )));
                    }
                  }
                },
              ),
            ),
            Expanded(
                child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => ShowMyQR(),
                        ),
                      );
                    },
                    child: Container(
                      width: 180,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.qr_code,
                            color: Colors.purple,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "SHOW MY QR CODE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
          ]),
        ),
      ),
    );
  }
}
