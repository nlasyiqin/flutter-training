import 'package:flutter/material.dart';

class formExample extends StatelessWidget {
   String name, email, phoneNum;
   formExample({Key? key, required this.name, required this.email, required this.phoneNum }): super(key:key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  // Text(name), boleh display tapi dia bukan dalam form
                  // Text(email),
                  // Text(phoneNum),
                  TextFormField(
                            decoration: InputDecoration(
                              hintText: name,
                              fillColor: Color(0xffF1F0F5),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(),
                              ),
                              
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: email,
                              fillColor: Color(0xffF1F0F5),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(),
                              ),
                              
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: phoneNum,
                              fillColor: Color(0xffF1F0F5),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(),
                              ),
                              
                            ),
                          ),
                ],
              ),
            ),);
  }
}

 

//  formExample({required this.name, required this.email, required this.phoneNum });


  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(body: Container(
  //             padding: EdgeInsets.only(bottom: 20),
  //             child: Column(
  //               children: [
  //                 TextFormField(
  //                           decoration: InputDecoration(
  //                             fillColor: Color(0xffF1F0F5),
  //                             filled: true,
  //                             enabledBorder: OutlineInputBorder(
  //                               borderRadius: BorderRadius.circular(20),
  //                               borderSide: BorderSide(),
  //                             ),
  //                             focusedBorder: OutlineInputBorder(
  //                               borderRadius: BorderRadius.circular(20),
  //                               borderSide: BorderSide(),
  //                             ),
  //                             Text('Name: ${name}'),
  //                           ),
  //                         ),
  //                         TextFormField(
  //                           decoration: InputDecoration(
  //                             fillColor: Color(0xffF1F0F5),
  //                             filled: true,
  //                             enabledBorder: OutlineInputBorder(
  //                               borderRadius: BorderRadius.circular(20),
  //                               borderSide: BorderSide(),
  //                             ),
  //                             focusedBorder: OutlineInputBorder(
  //                               borderRadius: BorderRadius.circular(20),
  //                               borderSide: BorderSide(),
  //                             ),
  //                             Text('Email: ${email}'),
  //                           ),
  //                         ),
  //                         TextFormField(
  //                           decoration: InputDecoration(
  //                             fillColor: Color(0xffF1F0F5),
  //                             filled: true,
  //                             enabledBorder: OutlineInputBorder(
  //                               borderRadius: BorderRadius.circular(20),
  //                               borderSide: BorderSide(),
  //                             ),
  //                             focusedBorder: OutlineInputBorder(
  //                               borderRadius: BorderRadius.circular(20),
  //                               borderSide: BorderSide(),
  //                             ),
  //                             Text('Phone Number: ${phoneNum}'),
  //                           ),
  //                         ),
  //               ],
  //             ),
  //           ),);
  // }}