import 'package:adhara_socket_io/adhara_socket_io.dart';
import 'dart:async';

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
    socket.on("slider", (data) {
      //sample event
      print("slider");
      print(data);
    });
    socket.connect();
  }

  void socketEmit(String event) {
    socket.emit("slider", [event]);
  }
}
