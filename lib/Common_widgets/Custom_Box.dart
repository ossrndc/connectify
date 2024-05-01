
import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Custom_Box extends StatefulWidget {
  final Icon prefixicon;
  final Color prefixIconColor;
  final String hintText;
  final TextEditingController controller;
  final double top;
  final double left;
  final double right;
  final double bottom;

   Custom_Box({super.key, required this.controller,required this.prefixicon, this.prefixIconColor=Colors.blueAccent, required this.hintText,this.top=2.0, this.left=7, this.right=10,this.bottom=11});

  @override
  State<Custom_Box> createState() => _Custom_BoxState();
}

class _Custom_BoxState extends State<Custom_Box> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:widget.left,right:widget.right,top:widget.top,bottom:widget.bottom),
      child: SizedBox(
        width: MediaQuery.of(context).size.width/1,
        child: TextFormField(
          onTap: (){},
          validator: (value){},
          controller: widget.controller,
          style: TextStyle(color: Colors.white),
          decoration:  InputDecoration(
              prefixIcon: widget.prefixicon,
              prefixIconColor: widget.prefixIconColor,
              hintText:widget.hintText,
              hintStyle: TextStyle(
                color: Colors.lightBlue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),

                //enabled border

              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(46),
                  borderSide: BorderSide(
                    width:2,color: Colors.blueAccent,
                  )
              ),

              //focused border

              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(46),
                  borderSide: BorderSide(
                    color: Colors.purple,
                    width: 2,

                  )
              )
          ),

        ),
      ),
    );
  }
}
