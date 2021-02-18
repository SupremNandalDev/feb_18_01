import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  Widget _buildTextField(){
    return Container(
      constraints: BoxConstraints(
        maxWidth: 300
      ),
      child: Card(
        margin: EdgeInsets.all(16),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Something something',

          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Layout Builder'
        ),
      ),
      body: LayoutBuilder(
        builder: (context,constraints){
          print('Width of the Page is: ${constraints.maxWidth}');

          if(constraints.maxWidth<510)
            return Column(
              children: [
                _buildTextField(),
                _buildTextField(),
                _buildTextField(),
                _buildTextField(),
              ],
            );

          if(constraints.maxWidth<900)
            return Column(
              children: [
                Row(
                  children: [
                    _buildTextField(),
                    _buildTextField(),
                  ],
                ),
                Row(
                  children: [
                    _buildTextField(),
                    _buildTextField(),
                  ],
                ),
              ],
            );

          return Wrap(
            children: [
              _buildTextField(),
              _buildTextField(),
              _buildTextField(),
              _buildTextField(),
              _buildTextField(),
              _buildTextField(),
            ],
          );

          return Column(
            children: [
              _buildTextField(),
              _buildTextField(),
              _buildTextField(),
              _buildTextField(),
            ],
          );

          // if(constraints.maxWidth<510){
          //   return Container(
          //     color: Colors.yellowAccent,
          //   );
          // }
          //
          // return Container(
          //   color: Colors.greenAccent,
          // );
        },
      ),
    );
  }
}
