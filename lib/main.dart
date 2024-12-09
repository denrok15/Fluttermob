import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: UserPanel(),
));


class UserPanel extends StatefulWidget {
  const UserPanel({super.key});

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('My app'),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body:  SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top:20)),
                  Text('John', style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),),
                  Padding(padding: EdgeInsets.only(top:10)),
                  CircleAvatar(
                    backgroundImage: AssetImage('img/photo.png'),
                    radius: 50,
                  ),
                  Padding(padding:EdgeInsets.only(top:20) ),
                  Row(
                    children: [
                      Icon(Icons.email,size:30,),
                      Padding(padding: EdgeInsets.only(left:10)),
                      Text('Lega',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left:25)),
                  Text('count $count',style: TextStyle(color: Colors.white),)
                ],
              )
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count ++;
          });
        },
        child: Icon(Icons.ads_click_outlined),
        backgroundColor: Colors.amber,
      ),
    );
  }
}