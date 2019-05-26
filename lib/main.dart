import 'package:flutter/material.dart';
import 'person.dart';
import 'animal.dart';
import 'animal_type.dart';
import 'button.dart';
import 'counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have clicked the button this many times...:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FwButton('Tham'),
            Counter(),
            Image.asset('assets/images/sample.jpg', width: 250.0,),
            Icon(
              Icons.accessible,
              size: 150.0,
              color: Colors.amber,
            ),
            Container(
              child: Icon(
                Icons.ac_unit,
                size: 100.0,
                color: Colors.indigo,
              ),
              decoration: BoxDecoration(
                color: Colors.indigo.withOpacity(0.25),
                borderRadius: BorderRadius.circular(15.0)
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
