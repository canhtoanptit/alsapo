import 'package:alsapo_client/screens/dashboard_screen.dart';
import 'package:alsapo_client/screens/notifiers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:socket_io_client/socket_io_client.dart' as IO;

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<SingleNotifier>(create: (_) => SingleNotifier())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlSapo',
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
  @override
  Widget build(BuildContext context) {
    print('sart');
    // Dart client
    IO.Socket socket = IO.io(
        'https://api-dev.vinid.dev',
        IO.OptionBuilder()
            .setPath("/mtp-martech/collector-ws/ws")
            .setTransports(['websocket']).build());
    socket.connect();
    socket.onConnect((_) {
      print('connect');
      //socket.emit('authenticate', "wrong token");
    });
    socket.on('hello', (data) => print(data));
    socket.onDisconnect((_) => print('disconnect'));
    socket.on('fromServer', (_) => print(_));
    print('ok');
    return Scaffold(
        body: Center(
      child: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {},
      ),
    ));
    //return DashboardScreen();
  }
}
