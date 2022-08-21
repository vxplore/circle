import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatelessWidget(),
    );
  }
}
class MyStatelessWidget extends StatefulWidget {
  MyStatelessWidget({Key? key}) : super(key: key);

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  TextEditingController c = TextEditingController();
  var text='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            FractionallySizedBox(
              widthFactor: 0.8,
              child: TextField(
                onChanged: (sdfsd){
                  //print(sdfsd);
                },
                controller: c,
                decoration: new InputDecoration(
                    hintText: 'Whats in your mind?',
                  contentPadding: EdgeInsets.all(10),
                ),


              ),
            ),
            SizedBox(
              height: 5,
            ),
            FractionallySizedBox(
              widthFactor: 0.8,

              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        text=c.text;
                      });
                    },
                    child: Text('Myresult')
                ),
              ),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}



