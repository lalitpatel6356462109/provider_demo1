import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/modal.dart';

void main() {
  runApp(MaterialApp(
    home: demo(),
  ));
}

class demo extends StatelessWidget {
  const demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider demo"),
      ),
      body:
          ChangeNotifierProvider(
              create: (context) => myclass(),
              child: demo1()),
    );
  }
}

class demo1 extends StatelessWidget {
  const demo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    myclass m= Provider.of(context);

    return Column(
      children: [
        TextField(controller:  m.t,),
        ElevatedButton(onPressed: () {
          m.get(m.t.text);
        }, child: Text("Submit"),
        
        ),
        Text("${m.str}")
      ],
    );
  }
}
