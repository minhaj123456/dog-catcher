import 'package:flutter/material.dart';




// class issues extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Animal Control App'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigate to the report page
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => ReportPage()),
//             );
//           },
//           child: Text('Report an Incident'),
//         ),
//       ),
//     );
//   }
// }

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Incident'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: descriptionController,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Incident Description',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Send the report to animal control service (you need to implement this part)
                sendReport(descriptionController.text);

                // Show a confirmation dialog
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Incident Reported'),
                      content: Text('Your incident report has been sent to animal control services.'),
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
              },
              child: Text('Submit Report'),
            ),
          ],
        ),
      ),
    );
  }

  // Implement the logic to send the incident report to animal control services
  void sendReport(String description) {
    // This is where you would integrate with your backend or API
    // For simplicity, we'll just print the description to the console
    print('Incident Reported: $description');
  }
}