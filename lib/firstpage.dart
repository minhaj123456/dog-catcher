import 'package:flutter/material.dart';
import 'package:task/captured.dart';
import 'package:task/imagepicker.dart';
import 'package:task/locate/locate.dart';
// import 'package:task/locate/locate.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
                padding: const EdgeInsets.only(top:200,left: 150),

        child: Column(
          children: [
             
      
              //  padding: const EdgeInsets.all(8.0),
               Container(
                  height: 50,
                  width: 230,
                  decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40),
                              
                            ),
                  child: InkWell(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  locate()));
             
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 1),
                          child: Container(
                            height: 35,
                          ),
                        ),
                        
                        const Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text("current location",style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,color:Colors.white
                                              ),),
                        ),
                      ],
                    ),
                  ), 
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    height: 50,
                    width: 230,
                    decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(40),
                                
                              ),
                    child: InkWell(
                       onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  CapturedImage()));
                              
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 1),
                            child: Container(
                              height: 35,
                            ),
                          ),
                          
                          const Padding(
                            padding: EdgeInsets.only(left: 70),
                            child: Text("Cemera",style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,color:Colors.white
                                                ),),
                          ),
                        ],
                      ),
                    ), 
                                 ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    height: 50,
                    width: 230,
                    decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(40),
                                
                              ),
                    child: InkWell(
                       onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  image()));
                              
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 1),
                            child: Container(
                              height: 35,
                            ),
                          ),
                          
                          const Padding(
                            padding: EdgeInsets.only(left: 60),
                            child: Text("choose a file",style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,color:Colors.white
                                                ),),
                          ),
                        ],
                      ),
                    ), 
                                 ),
                 ),
                   SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Send the report to animal control service (you need to implement this part)
                // sendReport(descriptionController.text);

                // Show a confirmation dialog
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Thank You'),
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
              child: Text('Submit '),
            ),
                
      
              
             
          ],
        ),
      ),
    );
  }
}