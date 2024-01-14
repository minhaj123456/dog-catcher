import 'package:flutter/material.dart';
import 'package:task/call.dart';
import 'package:task/chat.dart';
import 'package:task/firstpage.dart';
import 'package:task/issues.dart';
import 'package:task/report.dart';
// import 'package:new2/login/Teacher.dart';


class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top:200,left: 15),
        child: Column(
          children: [
           
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(40),
                          
                        ),
              child: InkWell(
                 onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  location()));

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
                      padding: EdgeInsets.only(left: 80),
                      child: Text("sent location and images",style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,color:Colors.white
                                          ),),
                    ),
                  ],
                ),
              ), 
            ),
            const SizedBox(height: 50,),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                          color: Color.fromARGB(255, 45, 191, 50),
                          borderRadius: BorderRadius.circular(40),
                          
                        ),
              child: InkWell(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  ReportPage()));

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
                      padding: EdgeInsets.only(left: 140),
                      child: Text("issues",style: TextStyle(
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
                      padding: const EdgeInsets.only(top:50,left: 15),

               child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                            color: Color.fromARGB(255, 146, 185, 30),
                            borderRadius: BorderRadius.circular(40),
                            
                          ),
                child: InkWell(
                   onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  Report()));
             
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 35,
                        ),
                      ),
                      
                      const Padding(
                        padding: EdgeInsets.only(left: 130),
                        child: Text("report",style: TextStyle(
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
            const SizedBox(height: 50,),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                          color: Color.fromARGB(255, 191, 45, 150),
                          borderRadius: BorderRadius.circular(40),
                          
                        ),
              child: InkWell(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  ChatScreen()));

                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        
                        
                        height: 35,
                      ),
                    ),
                    
                    const Padding(
                      padding: EdgeInsets.only(left: 110),
                      child: Text("chat assistant",style: TextStyle(
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
                                      padding: const EdgeInsets.only(top:50,left: 9),

                // padding: const EdgeInsets.all(8.0),
                child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                            color: Color.fromARGB(255, 197, 69, 34),
                            borderRadius: BorderRadius.circular(40),
                            
                          ),
                child: InkWell(
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  call()));
              
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          
                          
                          height: 35,
                        ),
                      ),
                      
                      const Padding(
                        padding: EdgeInsets.only(left: 150),
                        child: Text("call",style: TextStyle(
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
            
            
          ],
        ),
      ),
    );
  }
 }