import 'package:flutter/material.dart';
class OutLineRoundButton extends StatelessWidget {

  final String buttonTxt;
  final bool loading;
  final VoidCallback onPess;

  const OutLineRoundButton({Key? key,
    required this.buttonTxt,
    this.loading = false,
    required this.onPess

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onPess,
      child:Container(
        alignment: Alignment.center,
        height: 10,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white)
        ),
        child: Text(buttonTxt,style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
