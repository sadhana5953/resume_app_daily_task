import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class Pdf extends StatefulWidget {
  const Pdf({super.key});

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/print');
              },
              icon: Icon(Icons.picture_as_pdf))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
              invoiceList.length,
                  (index) => Container(
                height: 90,
                width: 350,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(left: 20, top: 20),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent.shade100,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  title: Text('${invoiceList[index].name}',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  subtitle: Text('${invoiceList[index].category}',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  trailing: Text('-/ ${invoiceList[index].price}',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            invoiceList.add(InvoiceModel(name: 'vivo Y-35',category: 'Phone',price: '25000'));
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

List<InvoiceModel> invoiceList = [
  InvoiceModel(name: 'HP Pavilion', price: '50000', category: 'Laptop'),
];

class InvoiceModel {
  String? name;
  String? category;
  String? price;

  InvoiceModel({this.name, this.price, this.category});
}

Future<Uint8List> generatepdf() {
  final pdf = pw.Document();
  pdf.addPage(pw.Page(
      build: (context) => pw.Column(
          children: List.generate(
              invoiceList.length,
                  (index) => pw.Container(
                height: 90,
                width: double.infinity,
                padding:  pw.EdgeInsets.all(16),
                margin:  pw.EdgeInsets.all(16),
                decoration: pw.BoxDecoration(
                  color: PdfColors.deepPurpleAccent,
                  // borderRadius: PdfBorderRadius.circular(5),
                ),
                child: pw.Column(
                    children: [
                      pw.Text('${invoiceList[index].name}                          -/${invoiceList[index].price}\n${invoiceList[index].category}',style: pw.TextStyle(color: PdfColors.white,fontSize: 25),),
                    ]
                ),
              )))));
  return pdf.save();
}

