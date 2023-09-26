import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class notesListSP extends StatefulWidget {
    const notesListSP({super.key});

  @override
  State<notesListSP> createState() => _notesListSPState();
}

class _notesListSPState extends State<notesListSP> {


  String? noteValue;

    @override
    void initState() {
        super.initState();
        getNotes();
    }

     @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Notes List SP'),
            ),
            body: Center(
                child: noteValue == null ? Text('No notes available') : Text(noteValue!),
            ),

        );
    }

    void getNotes() async{
        final SharedPreferences pref = await SharedPreferences.getInstance();
        noteValue = pref.getString('noteData');
    }
}

 

  