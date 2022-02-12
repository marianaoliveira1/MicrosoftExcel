import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Creat Excel"), 
          onPressed: createExcel,),),
    );
  }

  Future<void> createExcel() async {
    final Workbook workbook = Workbook();
    final List<int> bytes = workbook.saveAsStream();
    workbook.dispose();

  }
}