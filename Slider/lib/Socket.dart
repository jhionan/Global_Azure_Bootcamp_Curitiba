import 'package:adhara_socket_io/adhara_socket_io.dart';
import 'dart:async';

import 'Bloc.dart';

class SocketClient {
  SocketIO socket;

  SocketClient() {
    createSocket();
  }

  Future createSocket() async {
    socket = await SocketIOManager().createInstance(
        'http://192.168.1.2:7000/'); //TODO change the port  accordingly
    socket.onConnect((data) {
      print("connected...");
      print(data);
    });
    socket.on("slider", (event) {
      onSocketEvent(event);
    });
    socket.connect();
  }

  void onSocketEvent(String event) {
    if (event == "preview") {
      bloc.preview();
    } else
      bloc.next();
  }
}
