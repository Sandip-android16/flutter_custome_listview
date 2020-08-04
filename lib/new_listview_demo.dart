


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class New_ListView_Demo extends StatefulWidget{

  listview_demo createState()=>listview_demo();
}
class listview_demo extends State<New_ListView_Demo>{



      List<Profile>_getdata=[

          Profile("Sonu", "Mistry", "Sandip Mistry"),
          Profile("Sonu", "Mistry", "Sandip Mistry"),
          Profile("Sonu", "Mistry", "Sandip Mistry"),
          Profile("Sonu", "Mistry", "Sandip Mistry"),
          Profile("Sonu", "Mistry", "Sandip Mistry"),
          Profile("Sonu", "Mistry", "Sandip Mistry"),


      ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text("ListView Demo"),

      ),
      body: Container(

        child: ListView.builder(itemCount: _getdata.length,
            itemBuilder:(BuildContext context, int index){

          return ListTile(

            title: Text(_getdata[index].FullName),
            subtitle:  Text(_getdata[index].Name),

          );

            }),

      ),

    );

  }

}

class Profile{

  String Name;
  String Last;
  String FullName;

  Profile(this.Name, this.Last, this.FullName);
}