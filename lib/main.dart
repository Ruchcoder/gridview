import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyGridPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class  MyGridPage extends StatefulWidget {
  const MyGridPage ({Key? key}) : super(key: key);

  @override
  State<MyGridPage> createState() => _MyGridPageState();
}

class _MyGridPageState extends State< MyGridPage> {

  List<String> quote = [


    "Believe you can ",
    "Dream big, ",
    "Success is not final",
    " failure is not fatal"
    "You are never too old "
    "You miss 100% of the shots you don't take. -Wayne Gretzky",
    "Don't watch the clock",
    "If you want to live a happy life, tie it to a goal, not to people or things. -Albert Einstein",
    "Believe in yourself and all that you are. K",
    "Happiness is not something ready made.",
    "Do one thing every day that scares you. -Eleanor Roosevelt",




  ];

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("GRIDVIEW")),
      body: SafeArea(
          child:  Column(
            children: [
              SizedBox(height: 5),
              Expanded(
                child: GridView.builder(
                    padding: EdgeInsets.all(30),
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount (
                      crossAxisCount: 3,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 3,

                    ) ,
                    itemCount: 21,
                    itemBuilder: (context, index){
                      return Container(

                        padding: EdgeInsets.all(9),
                        color: Color(0xFF7FA2FF),
                        child: Center(
                          child: Text("${quote[index]}"),
                        ),
                      );
                    }
                ),
              )


            ],

          )

      ),

    );

  }
}