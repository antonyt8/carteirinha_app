import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart'; // Nova dependência

class ValidacaoScreen extends StatefulWidget {
  @override
  _ValidacaoScreenState createState() => _ValidacaoScreenState();
}

class _ValidacaoScreenState extends State<ValidacaoScreen> {
  String _qrCode = 'Nenhum QR code escaneado';

  Future<void> _scanQRCode() async {
    try {
      // Escaneia o QR code
      var result = await BarcodeScanner.scan();

      if (!mounted) return;

      setState(() {
        _qrCode = result.rawContent; // Obtém o conteúdo escaneado
      });
    } catch (e) {
      // Trata erros
      if (!mounted) return;

      setState(() {
        _qrCode = 'Erro ao escanear: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Validação'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _qrCode,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _scanQRCode,
              child: Text('Escanear QR Code'),
            ),
          ],
        ),
      ),
    );
  }
}