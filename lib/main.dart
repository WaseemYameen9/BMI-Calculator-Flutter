import 'package:bmi/splash_screen.dart';
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
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var BMI;
  var WeightController = TextEditingController();
  var HeightController = TextEditingController();
  Color Back = Colors.blue.shade200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade400,
        title: Center(child: Text("")),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Back,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('BMI Calculator',style: TextStyle(color: Colors.indigo.shade400,fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0),
              child: TextField(
                controller: HeightController,
                decoration: InputDecoration(
                  hintText: 'Enter your Height in (feet)',
                    filled: true,
                    fillColor: Colors.blue.shade50,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)

                  )
                ),
              ),
            ),
            SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0),
              child: TextField(
                controller: WeightController,
                decoration: InputDecoration(
                  hintText: 'Enter your Weight in (Kg)',
                  filled: true,
                  fillColor: Colors.blue.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)

                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: ElevatedButton(
                  onPressed: (){
                    double h = double.parse(HeightController.text.toString());
                    double w = double.parse(WeightController.text.toString());
                    WeightController.text.toString();
                    h = h * 0.3048;
                    BMI = (w/(h*h)).toStringAsFixed(3);
                    double BM = double.parse(BMI);
                    if(BM<18.5){
                      Back = Colors.red.shade400;
                    }
                    else if(BM>24.9){
                      Back = Colors.red.shade400;
                    }
                    else{
                      Back = Colors.blue.shade200;
                    }
                    setState(() {
                    });
                  },
                  child: Text('Calculate')),
            ),
            SizedBox(height: 40,),
            Text('Your BMI: $BMI',style: TextStyle(fontSize: 20),)

          ],
        ),

      )
    );
  }
}
