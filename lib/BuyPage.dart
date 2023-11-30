import 'package:flutter/material.dart';

class BuyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
        backgroundColor: Colors.teal[200],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Choose Payment Method',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Image.network('https://seeklogo.com/images/B/bkash-logo-0C1572FBB4-seeklogo.com.png',height: 110, width: 100),
                SizedBox(width: 15),
                Image.network('https://seeklogo.com/images/D/dutch-bangla-rocket-logo-B4D1CC458D-seeklogo.com.png', height: 110, width: 100),
                Image.network('https://logowik.com/content/uploads/images/visa-payment-card1873.jpg', height: 130, width: 130),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/450px-MasterCard_Logo.svg.png', height: 140, width: 140),
                Image.network('https://logos-world.net/wp-content/uploads/2020/11/American-Express-Logo.png', height: 140, width: 140),
              ],
            ),
            SizedBox(height: 16),
            DropdownButton<String>(
              items: <String>['BKash', 'Rocket', 'MasterCard', 'American Express']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle dropdown value change
              },
              hint: Text('Select payment option'),
            ),
            SizedBox(height: 32),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
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
              child: Text('Go Back'), // Closing parenthesis was added here
            ),
          ],
        ),
      ),
    );
  }
}
