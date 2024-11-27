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
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget calcbutton(String btntxt,Color btncolor,Color txtcolor){
    return Container(
      child: ElevatedButton(onPressed: () {}, child:
      Text(btntxt,style: TextStyle(fontSize: 35,color: txtcolor),
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        backgroundColor: btncolor,
          padding: EdgeInsets.all(25),
      )

      ),
    );
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Calculator App',style: TextStyle(color: Colors.white),)),
      ),
      body:
      Padding(
          padding:EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('0',textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontSize: 100),),


                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('AC', Colors.grey, Colors.black),
                calcbutton('+/-', Colors.grey, Colors.black),
                calcbutton(' % ', Colors.grey, Colors.black),
                calcbutton(' / ', Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton(' 7 ', Colors.grey, Colors.black),
                calcbutton(' 8 ', Colors.grey, Colors.black),
                calcbutton(' 9 ', Colors.grey, Colors.black),
                calcbutton(' X ', Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton(' 4 ', Colors.grey, Colors.black),
                calcbutton(' 5 ', Colors.grey, Colors.black),
                calcbutton(' 6 ', Colors.grey, Colors.black),
                calcbutton(' - ', Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton(' 1 ', Colors.grey, Colors.black),
                calcbutton(' 2 ', Colors.grey, Colors.black),
                calcbutton(' 3 ', Colors.grey, Colors.black),
                calcbutton(' + ', Colors.amber, Colors.black),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  height: 75,
                  child: ElevatedButton(

                      onPressed: (){

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: StadiumBorder()
                      ),
                      child: Text("0",style: TextStyle(fontSize: 35,color: Colors.black),)
                  ),
                ),
                calcbutton(' . ', Colors.grey, Colors.black),
                calcbutton(' = ', Colors.amber, Colors.black),
              ],
            )

          ],
        ),
      ),
    );
  }
}
