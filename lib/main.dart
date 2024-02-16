import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAR Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 54, 244, 92)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'FAR Calculator App'),
    );
  }
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (context) => MyAppState(),
  //     child: MaterialApp(
  //       title: 'FAR Calculator App',
  //       theme: ThemeData(
  //         useMaterial3: true,
  //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
  //       ),
  //       home: MyHomePage((title: 'FAR Calculator App')),
  //     ),
  //   );
  // }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
      
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            shape: BoxShape.rectangle,
            border: Border.all(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(20)),

          ),
          // color: Theme.of(context).colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
             
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Give the informations below:',
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter Ward no.',
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter Road Width (RW)',
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: const InputDecoration(
                  border: UnderlineInputBorder(),              
                  labelText: 'Enter Land Area',
                  ),
                ),
                // Text(
                //   '$_counter',
                //   style: Theme.of(context).textTheme.headlineMedium,
                // ),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), 
    );
  }
}
