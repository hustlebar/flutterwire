import 'package:flutter/material.dart';
import 'person.dart';
import 'animal.dart';
import 'animal_type.dart';
import 'button.dart';
import 'counter.dart';

import 'package:flutterwire/weather/weather.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Wire',
//      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        accentColor: Colors.deepOrangeAccent,
//        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Flutter Wire'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    Person person = new Person();
//    person.sayGreetings();
//    print(person.total(10, 6));
    person.nameParam(name: 'Tham');
    person.optionalParam(10);
    person.optionalParam(10, 15);

    Animal animal = new Animal('Suki', AnimalType.Cat);
    print(animal.hashCode);

    Animal kuttiSuki = Animal.fromProps('Kutti Suki', AnimalType.Cat);
    print(kuttiSuki.hashCode);

    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight(context)),
        child: AppBar(
//        title: Text(widget.title),
        ),
      ),
//      backgroundColor: Colors.orange.withRed(200).withAlpha(200),
      body: Center(
        child: Weather(),
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have clicked the button this many times...:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//            FwButton('Tham'),
//            Counter(),
//            Image.asset('assets/images/sample.jpg', width: 250.0,),
//            Icon(
//              Icons.accessible,
//              size: 150.0,
//              color: Colors.amber,
//            ),
//            Container(
//              child: Icon(
//                Icons.ac_unit,
//                size: 100.0,
//                color: Colors.indigo,
//              ),
//              decoration: BoxDecoration(
//                color: Colors.indigo.withOpacity(0.25),
//                borderRadius: BorderRadius.circular(15.0)
//              ),
//            )
//          ],
//        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: UniqueKey(),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
//      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
//      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  final double kToolbarHeight = 56.0;
  double appBarHeight(BuildContext context) {
    return screenAwareSize(kToolbarHeight, context);
  }

  final double kBaseHeight = 650.0;
  double screenAwareSize(double size, BuildContext context) {
    double drawingHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return size * drawingHeight / kBaseHeight;
  }
}
