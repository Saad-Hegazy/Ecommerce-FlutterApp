import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'core/functions/checkinternet.dart';
class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var res;
  inialdata()async{
    res=await checkInternet();
    print(res);
  }
  @override
  void initState() {

    inialdata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child:ListView(
          children: [

          ],
        )
      ),
    );
  }
}
