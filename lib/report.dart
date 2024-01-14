import 'package:flutter/material.dart';


class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  final TextEditingController locationController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Stray Dog'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: locationController,
              decoration: InputDecoration(labelText: 'Location'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              maxLines: 4,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Validate and submit the report
                if (validateInputs()) {
                  submitReport();
                  showConfirmationDialog();
                }
              },
              child: Text('Submit Report'),
            ),
          ],
        ),
      ),
    );
  }

  bool validateInputs() {
    if (locationController.text.isEmpty || descriptionController.text.isEmpty) {
      // Show an error message
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please fill in all fields.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return false;
    }
    return true;
  }

  void submitReport() {
    // Implement the logic to send the report to the backend or API
    // For simplicity, we'll just print the details to the console
    print('Stray Dog Reported:');
    print('Location: ${locationController.text}');
    print('Description: ${descriptionController.text}');
  }

  void showConfirmationDialog() {
    // Show a confirmation dialog
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Report Submitted'),
          content: Text('Thank you for reporting the stray dog!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}