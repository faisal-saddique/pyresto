import 'package:flutter/material.dart';
import 'package:pyresto/pages/colors_pallete.dart';

class DivisionTables extends StatefulWidget {
  const DivisionTables({Key? key}) : super(key: key);

  @override
  State<DivisionTables> createState() => _DivisionTablesState();
}

class _DivisionTablesState extends State<DivisionTables> {
  int selectedNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(ColorsPalletePyresto().brownColor),
        centerTitle: true,
        title: Text(
          'PYRESTO',
          style: TextStyle(
            color: Color(ColorsPalletePyresto().lightColor),
            fontSize: 24,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
            fontFamily: 'Times New Roman',
          ),
        ),
      ),
      backgroundColor: Color(ColorsPalletePyresto().midColor),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'DIVISION TABLES',
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(ColorsPalletePyresto().blackColor),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Please select the number from the drop-down below to generate its division table',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Times New Roman",
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                DropdownButton<int>(
                  value: selectedNumber,
                  onChanged: (int? newValue) {
                    setState(() {
                      selectedNumber = newValue!;
                    });
                  },
                  items: List<DropdownMenuItem<int>>.generate(
                    30,
                        (index) => DropdownMenuItem<int>(
                      value: index + 1,
                      child: Text('${index + 1}'),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                for (int i = 1; i <= 10; i++)
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 3,
                        color: Color(ColorsPalletePyresto().brownColor),
                        style: BorderStyle.solid,
                      ),
                    ),
                    elevation: 5,
                    color: Color(ColorsPalletePyresto().lightColor),
                    child: ListTile(
                      title: Text(
                        '${selectedNumber * i} ÷ $selectedNumber = ${selectedNumber * i ~/ selectedNumber}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.bold,
                          color: Color(ColorsPalletePyresto().blackColor),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
