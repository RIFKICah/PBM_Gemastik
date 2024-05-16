import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetSearchbar extends StatelessWidget {
  WidgetSearchbar(
      {Key? key,
      required String hintText,
      required Null Function(dynamic value) onChanged})
      : super(key: key);
  final TextEditingController _textController = TextEditingController(
    text: 'APA YANG KAMU CARI?',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(40.0), // Corner radius
      ),
      width: 321.0, // Set width to 321
      height: 33.0,
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Center(
        child: CupertinoSearchTextField(
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Color.fromARGB(102, 0, 0, 0), // Adjust color as needed
                fontSize: 8.0,
                fontWeight: FontWeight.bold // Adjust font size as needed
                ),
          ),
          controller: _textController,
        ),
      ),
    );
  }
}
