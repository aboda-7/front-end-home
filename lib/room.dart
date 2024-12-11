import 'package:flutter/material.dart';
import 'package:yarab/deletemessage.dart';
import 'package:yarab/roomlist.dart';
import 'roomlist.dart';

class Devices {
  Icon deviceicon;
  String name;
  int devicenumber;

  Devices(this.deviceicon, this.name, this.devicenumber);
}

class room extends StatefulWidget {
  int roomid;  // Mark this field as final

  room({super.key, required this.roomid});  // Initialize roomid

  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<room> {
  late int _deviceCount; // Initialize later

  Map<int, List<Devices>> devicesArray = {
    1: [
      Devices(const Icon(Icons.lightbulb), "Light", 1),
      Devices(const Icon(Icons.tv), "Television", 2),
      Devices(const Icon(Icons.ac_unit), "Air Condition", 3),
    ],
    2: [
      Devices(const Icon(Icons.ac_unit), "Air Condition", 1),
      Devices(const Icon(Icons.lightbulb), "Light", 2),
    ],
    3: [
      Devices(const Icon(Icons.lightbulb), "Light", 1),
      Devices(const Icon(Icons.print), "Printer", 2)
    ],
    4: [
      Devices(const Icon(Icons.lightbulb), "Light", 1),
    ],
  };

  @override
  void initState() {
    super.initState();
    _deviceCount = devicesArray[widget.roomid]?.length ?? 0;  // Set initial count based on the current room
  }

  void _addDevice() {
    setState(() {
      int newDeviceNumber = _deviceCount + 1;
      devicesArray[widget.roomid]?.add(Devices(const Icon(Icons.lightbulb), "Light", newDeviceNumber));
      _deviceCount++;
    });
  }

  void _removeDevice(int index) {
    if (_deviceCount > 0) {
      setState(() {
        devicesArray[widget.roomid]?.removeAt(index);
        _deviceCount--;
      });
    }
  }

  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: 450,
      width: 390,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 20.0,left: 20),
              child: ListView.builder(
                itemCount: _deviceCount + 1,
                itemBuilder: (context, index) {
                  if (index == _deviceCount) {
                    return GestureDetector(
                      onTap: _addDevice,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedContainer(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFF4F6FF),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          duration: Duration(milliseconds: 500),
                          child: Column(
                            children: [
                              const SizedBox(height: 15),
                              Icon(Icons.add, color: Colors.black, size: 25),
                              Text(
                                'Add Device',
                                style: TextStyle(color: Colors.black,
                                fontFamily: 'ProductSans'
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  } else {
                    final device = devicesArray[widget.roomid]?[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          isClicked=!isClicked;
                        });
                      },
                      onLongPress: () {
                        showDialog(
                          context: context,
                          builder: (context) => Deletemessage(
                            onRemoveDevice: () => _removeDevice(index),
                            message: "Delete Device?",
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: isClicked ? Color(0xFFF4F6FF).withOpacity(0.5):Color(0xFFF4F6FF),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:10,top:10),
                                child: Text(
                                    device?.name ?? 'Unknown Device',
                                    style: const TextStyle(color: Colors.black,fontFamily: 'ProductSans',fontSize: 20),
                                  ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left : 30),
                                child: Icon(
                                  device?.deviceicon.icon ?? Icons.device_unknown,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                },
               ),
            ),
          ),
        ],
      ),
    );
  }
}
