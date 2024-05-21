import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume_app_daily_task/Screens/Invoice%20Generator/pdf_generator.dart';
class printPdf extends StatefulWidget {
  const printPdf({super.key});

  @override
  State<printPdf> createState() => _printPdfState();
}

class _printPdfState extends State<printPdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PdfPreview(build: (formate)=>generatepdf(),),
    );
  }
}
