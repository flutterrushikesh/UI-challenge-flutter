import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:transyte/Controllers/qr_controller.dart';

class ViewQr extends StatelessWidget {
  const ViewQr({super.key});

  @override
  Widget build(BuildContext context) {
    return QRView(
      key: Provider.of<QrController>(context).qrKey,
      onQRViewCreated: Provider.of<QrController>(context).onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: const Color.fromRGBO(255, 255, 255, 1),
        borderRadius: 10,
        borderLength: 40,
        borderWidth: 5,
        cutOutSize: 300,
      ),
    );
  }
}
