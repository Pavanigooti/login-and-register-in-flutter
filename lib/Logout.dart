import 'package:flutter/material.dart';

/*class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('logout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           // Text('logout Page', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20), // Adds some space between the text and the button
            ElevatedButton(
              onPressed: () {
                // Navigate back to HomePage
                Navigator.pop(context); // This will take the user back to the previous screen
              },
              child: Text('logout'),
            ),
          ],
        ),
       // child: Text('logout Page'),
      ),
    );
  }
}*/
/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogoutPage(),
    );
  }
}*/

class Logout extends StatelessWidget {
  // Function to show the confirmation dialog
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Logout'),
          content: Text('Are you sure you want to log out?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Perform the logout action here
                Navigator.of(context).pop(); // Close the dialog
                // Navigate to a login screen or other logic
                print("Logged out");
              },
              child: Text('Confirm Logout'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Logout Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showLogoutDialog(context); // Show the logout confirmation dialog
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}
