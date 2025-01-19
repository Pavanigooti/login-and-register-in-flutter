
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Import fluttertoast package
//import 'package:projectone/Homepage.dart';
import 'NextPage.dart'; // Import the RegisterPage

class Registerpage extends StatefulWidget {
  @override
  _RegisterpageState createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final _formKey = GlobalKey<FormState>(); // Create a global key for the form
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _conformpasswordController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  // Method to show a toast message if validation fails
  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
    );
  }
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // If form is valid, proceed to the next screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>SecondPage()),
      );
    } else {
      _showToast("Please fill all fields!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Attach the form key for validation
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name Text Field with Validation
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name'; // Error message
                  }
                  return null; // No error
                },
              ),
              SizedBox(height: 16),

              // Email Text Field with Validation
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email'; // Error message
                  }
                  // Email format validation
                  if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                      .hasMatch(value)) {
                    return 'Please enter a valid email address'; // Invalid email format
                  }
                  return null; // No error
                },
              ),
              SizedBox(height: 16),
              // ID Text Field with Validation
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password'; // Error message
                  }
                  return null; // No error
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _conformpasswordController,
                decoration: InputDecoration(
                  labelText: ' conform password',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password'; // Error message
                  }
                  return null; // No error
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _locationController,
                decoration: InputDecoration(
                  labelText: ' location',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your location'; // Error message
                  }
                  return null; // No error
                },
              ),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Register'),
              ),
              SizedBox(height: 20),
              Text("Already have an account"),
              // Clickable Text to go to RegisterPage
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text(
                  'Go to Login Page',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}








