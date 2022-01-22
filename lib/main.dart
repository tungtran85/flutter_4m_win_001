import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 4M Win 001',
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
      home: const MyHomePage(title: 'Flutter 4M W 001'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _imageDisplay = 'https://1.bp.blogspot.com/-JRH0FX3OLPE/XphJngWxD1I/AAAAAAACl1w/6t48pefUKhEqGL0cdCKKyz9d-5Fji8X2wCLcBGAsYHQ/s1600/89960003_863268697469133_4933563472216850126_n.jpg';

  void _incrementCounter() {
    setState(() {
      var _imageurl1 = 'https://1.bp.blogspot.com/-v2SVKr5zVp8/XpB67YESVhI/AAAAAAAClfw/Qs51-TuJvzIYsmv2Vw0Kp5lm8j_sD7RxgCLcBGAsYHQ/s1600/39167128_867343113463637_3327140349066870784_o.jpg';
      var _imageurl2 = 'https://1.bp.blogspot.com/-QGPz7Yh_OwQ/XjhL2r7EwmI/AAAAAAACeNQ/Xl3Od3X5MwAnhU-oWFacVX4dxyH-5bKdACLcBGAsYHQ/s1600/84539911_2456028471315193_5381519147723128832_n.jpg';
      var _imageurl3 = 'https://1.bp.blogspot.com/-da7SF-XbBes/Xjr2FVIaB5I/AAAAAAACegw/v-Buz07ZwL0vOTPRPCLp76J3S3MpRUTlgCLcBGAsYHQ/s1600/43b35a7d-4e27-421d-8ee6-1be6739dd9f9.jpeg';
      var _imageurl4 = 'https://1.bp.blogspot.com/--wOpkNqM6FA/XpXKgg0O2rI/AAAAAAACloE/BOUkOf2ZqVEmMtzHqWcYOV6HtBRRt1HFwCLcBGAsYHQ/s1600/70604412_3075753209164677_3656338386735595520_o.jpg';
      _counter++;
      if(_counter > 4)
      {
        _counter = 0;
      }
      switch(_counter)
      {
        case 0:
          {
            _imageDisplay = 'https://1.bp.blogspot.com/-JRH0FX3OLPE/XphJngWxD1I/AAAAAAACl1w/6t48pefUKhEqGL0cdCKKyz9d-5Fji8X2wCLcBGAsYHQ/s1600/89960003_863268697469133_4933563472216850126_n.jpg';
          }
          break;
        case 1:
          {
            _imageDisplay = _imageurl1;
          }
          break;
        case 2:
          {
            _imageDisplay = _imageurl2;
          }
          break;
        case 3:
          {
            _imageDisplay = _imageurl3;
          }
          break;
        case 4:
          {
            _imageDisplay = _imageurl4;
          }
          break;
      }
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
            new Image.network('$_imageDisplay', ),
             Text(
               '$_counter',
               style: Theme.of(context).textTheme.headline4,
             ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
