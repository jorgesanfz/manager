import 'package:flutter/material.dart';

class HairSalonAppointmentForm extends StatefulWidget {
  @override
  _HairSalonAppointmentFormState createState() =>
      _HairSalonAppointmentFormState();
}

class _HairSalonAppointmentFormState extends State<HairSalonAppointmentForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hair Salon Appointment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  icon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  icon: Icon(Icons.phone),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  if (Form.of(context).validate()) {
                    // Submit the form data
                    // You can add your logic here, like saving the appointment details
                    // or navigating to another screen
                    print('Form submitted!');

                    // Close the modal after submitting the form
                    Navigator.of(context).pop();
                  }
                },
                child: Text('Schedule Appointment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}