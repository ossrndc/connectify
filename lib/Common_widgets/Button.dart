import 'package:flutter/material.dart';


class Button extends StatefulWidget {
  final String Text;
  final Color color;
  final double size;
  final Function onPressed;
   Button({super.key, required this.Text, required this.color, required this.size, required this.onPressed});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

    onPressed: (){
      widget.onPressed;
    },

        child: Text(widget.Text,style: TextStyle(
          color: widget.color,
          fontSize: widget.size,
        ),),
        style:
        ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          shape:MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(25),
    ),

        ),
        ));
  }
}
