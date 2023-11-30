import 'package:flutter/material.dart';
import 'BuyPage.dart';


class front extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
          // style: TextStyle(fontWeight: FontWeight.bold),
          backgroundColor: Colors.teal[200],
          centerTitle: true,


        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Product Name',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

              ),
              SizedBox(height: 16),
              Image.network("https://cdn.pixabay.com/photo/2012/05/29/00/43/car-49278_1280.jpg"

              ),
              SizedBox(height: 10),
              Text(
                'Product Price: \$28,000',
                style: TextStyle(color: Colors.red[600],fontSize: 18),
              ),
              SizedBox(height: 44),
              Text(
                'Product Feature Description:',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                '- Engine: 2.5L V6\n'
                    '- Transmission: Automatic\n'
                    '- Color: Midnight Black\n'
                    '- Top Speed: 150 mph\n'
                    '- Fuel Efficiency: 25 mpg (City), 30 mpg (Highway)',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 42),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade300),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.all(15),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text(
                    'Buy Now'

              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}