import 'package:flutter/material.dart';
import 'package:khalti_clone/Pages/qr/result_screen.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "QR Scanner",
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          child: Column(children: [
            Expanded(
                child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Place QR Code in this area",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "scanning will be started automatically",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
              flex: 4,
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
                  Text(
                    "Developed By:Sova kushwaha",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "scanning will be started automatically",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
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
