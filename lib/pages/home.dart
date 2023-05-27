import 'package:flutter/material.dart';
import 'package:pyresto/pages/colors_pallete.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Welcome to Pyresto',
            style: TextStyle(
              fontFamily: "Times New Roman",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(ColorsPalletePyresto().blackColor),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Pyresto is a learning app that helps you learn basic Mathematics in an intuitive way.',
            style: TextStyle(
              fontFamily: "Times New Roman",
              fontSize: 16,
              color: Color(ColorsPalletePyresto().blackColor),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/addition_tables');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(ColorsPalletePyresto().blackColor),
                    ),
                  ),
                  icon: Icon(Icons.add),
                  label: Text(
                    'Addition Tables',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/multiplication_tables');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(ColorsPalletePyresto().blackColor),
                    ),
                  ),
                  icon: Icon(Icons.close),
                  label: Text(
                    'Multiplication Tables',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/division_tables');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(ColorsPalletePyresto().blackColor),
                    ),
                  ),
                  icon: Icon(Icons.calculate),
                  label: Text(
                    'Division Tables',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Developed by Pyresto Team',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 14,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
