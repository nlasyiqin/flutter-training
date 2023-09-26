import 'package:first_test/formExample.dart';
import 'package:first_test/listScreenemp.dart';
import 'package:first_test/nextPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:first_test/notesListSP.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // const title = 'Basic List';

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
  


      
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phoneNum = new TextEditingController();
  TextEditingController notesController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: const Text('title'),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              
              ElevatedButton(
                onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> listExample()));
              }, child: Text('List example Screen')),
        
              ElevatedButton(
                onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> secondScreen()));
              }, child: Text('Next Screen')),
        
              ElevatedButton(
                onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> formExample(name: _name.text, email: _email.text, phoneNum: _phoneNum.text)
                ),
                );
              }, child: Text('Form Screen')),
        
              ElevatedButton(
                onPressed: (){
                  setNotesData(notesController.text);
                
              }, child: Text('Save')),
        
              ElevatedButton(
                onPressed: (){
                  setNotesData(notesController.text);
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> notesListSP()));
              }, child: Text('View Notes')),
        
        
              TextFormField(
                controller: notesController,
                decoration: InputDecoration(hintText: 'Enter notes')
              ),
        
        
              
        
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    TextFormField(
                              controller: _name,
                              decoration: InputDecoration(
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
                                labelText: 'Name *',
                              ),
                            ),
                            TextFormField(
                              controller: _email,
                              decoration: InputDecoration(
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
                                labelText: 'Email *',
                              ),
                            ),
                            TextFormField(
                              controller: _phoneNum,
                              decoration: InputDecoration(
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
                                labelText: 'Phone Number *',
                              ),
                            ),
        
                          
                  ],
                ),
              ),
                      
            ],
          ),
        ),
      );
  }

  Future<void> setNotesData(noteValue) async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('noteData', noteValue);
  }
}
