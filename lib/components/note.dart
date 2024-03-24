import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Note extends StatefulWidget {
  final String title;
  final String note;
  const Note({super.key, required this.title, required this.note});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    final swidth = MediaQuery.sizeOf(context).width / 100;
    final sheight = MediaQuery.sizeOf(context).height / 100;
    return Padding(
      padding: EdgeInsets.fromLTRB(5 * swidth, 5 * swidth, 0, 0),
      child: Container(
        width: 37.5 * swidth,
        height: 50 * swidth,
        decoration: BoxDecoration(
            color: const Color.fromARGB(179, 0, 0, 0),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(2*sheight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: GoogleFonts.raleway(
                  fontSize: 2.3*sheight,
                  color: Colors.white,
                  fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height: .7*sheight),
              Text(
                widget.note,
                style: GoogleFonts.raleway(
                  
                  color: const Color.fromARGB(226, 223, 211, 200),
                  fontSize: 1.5*sheight
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
