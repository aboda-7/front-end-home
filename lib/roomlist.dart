import 'package:flutter/material.dart';
import 'package:yarab/appdrawer.dart';
//import 'package:yarab/chooseroom.dart';

import 'room.dart';
import 'chooseroom.dart';
import 'dashboard.dart';
import 'deletemessage.dart';

class Rooms {
  Icon roomicon;
  int id;
  String name;
  bool isSelected;

  Rooms(this.roomicon, this.id, this.name,this.isSelected);
}

late final int idroom;

class roomlist extends StatefulWidget {
  const roomlist({super.key});

  @override
  _listofrooms createState() => _listofrooms();
}

class _listofrooms extends State<roomlist> {

  final List<Rooms> roomsarray = <Rooms>[
    Rooms(const Icon(Icons.door_back_door,color: Colors.white,),1,"Living",true),
    Rooms(const Icon(Icons.bathroom,color: Colors.white,),2,"Bathroom",false),
    Rooms(const Icon(Icons.room_preferences,color: Colors.white,),3,"Office",false),
    Rooms(const Icon(Icons.bedroom_parent,color: Colors.white,),4,"Bedroom",false),
  ];

  late int _roomumber=5;

  void _removeroom(int index) {
    setState(() {
      roomsarray.removeAt(index);
    });
  }

  void _addroom() {
    setState(() {
      roomsarray.add(Rooms(const Icon(Icons.bedroom_parent, color: Colors.white),_roomumber++,"Bedroom",false));
    });
  }



  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        // gradient: const LinearGradient(
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        //   // colors: <Color>[
        //   //   Colors.black,
        //   //   Colors.black,
        //   // ],
        // ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: 100,
      width: 390, //53
      child:
      ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: roomsarray.length+1,
        itemBuilder: (context, index) {
          if(index==roomsarray.length){
            return GestureDetector(
                onTap: _addroom,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.1)
                  ),
                  child:
                  Column(
                    children: [
                      SizedBox(height: 25,),
                      Icon(Icons.add,color: Colors.white,),
                      Text("Add Room", style: TextStyle(
                          fontFamily: "ProductSans",
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
            );
          }
          else{
            return GestureDetector(
              onLongPress: (){
                showDialog(context: context, builder: (context)=>Deletemessage(onRemoveDevice: () => _removeroom(index), message: 'Delete Room?',));
              },
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => dashboard(passedid: roomsarray[index].id),
                //   ),
                // );
                setState(() {
                  for (var i in roomsarray) {
                    i.isSelected = false;
                  }
                  roomsarray[index].isSelected=true;
                });
                for (var i in roomsarray) {
                  print('icon: ${i.roomicon}, id: ${i.id}, name: ${i.name}, isSelected: ${i.isSelected}');
                }
              },
              child: AnimatedContainer(
                key: ValueKey(roomsarray[index].id),
                duration: Duration(milliseconds: 200),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: roomsarray[index].isSelected ? Colors.white.withOpacity(0.3):Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    roomsarray[index].roomicon,
                    Text('${roomsarray[index].name}',style: TextStyle(
                        fontFamily: 'ProductSans',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ),
              );
            }
          },
        separatorBuilder: (context, index) => const SizedBox(width: 15,),
      ),
    );
  }
}