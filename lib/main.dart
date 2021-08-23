import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'Button Widget',
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Button Widget'),),
      backgroundColor: Colors.green,
      body: MyApp(),
    ),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            RaisedButton(onPressed: (){print("On Pressed");},
              child: Text('Click Me'),
              color: Colors.yellowAccent,
            ),
            ElevatedButton(onPressed: (){print("On Pressed");},
                child: Text('Click me')
            ),
            FlatButton(
                onPressed: (){print("On Pressed");},
                child: Text('Click me')
            ),
            TextButton(
                onPressed: (){print("On Pressed");},
                child: Text('Click me')
            ),
            ElevatedButton.icon(onPressed: (){print("On Pressed");},
                icon: Icon(Icons.account_circle),
                label: Text('Click me')
            ),
            IconButton(
                onPressed: (){print("On Pressed");},
                icon: Icon(Icons.security)
            ),
            FloatingActionButton(
                onPressed: (){print("On Pressed");},
                child: Text(' Click\n me')
            )
          ],
        ),
      ),
    );
  }
}
