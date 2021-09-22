import 'package:flutter/material.dart';
import 'package:flutter_sprintsday5/model/User.dart';

class detailScreen extends StatelessWidget {
  final List<User> usedList;
  final int usedIndex;

  detailScreen(this.usedList, this.usedIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
          margin: EdgeInsets.all(30),
          width: 500,
          height: 700,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'User Data',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black),
                  ),
                )
                ,
                Text(
                    "Id: ${usedList[usedIndex].id}"
                        "\nName: ${usedList[usedIndex].name}"
                        "\nE-mail: ${usedList[usedIndex].email}"
                        "\nPhone: ${usedList[usedIndex].phone}"
                        "\nUserName: ${usedList[usedIndex].username}"
                        "\nWebsite: ${usedList[usedIndex].website}"
                        "\nAddress:"
                        "\n       street: ${usedList[usedIndex].address.street}"
                        "\n       suite: ${usedList[usedIndex].address.suite}"
                        "\n       city: ${usedList[usedIndex].address.city}"
                        "\n       zipcode: ${usedList[usedIndex].address.zipcode}"
                        "\n       geo:"
                        "\n       lat: ${usedList[usedIndex].address.geo.lat}"
                        "\n       lng: ${usedList[usedIndex].address.geo.lng}"
                        "\nCompany: {"
                        "\nName: ${usedList[usedIndex].company.name}"
                        "\ncatchPhrase: ${usedList[usedIndex].company.catchPhrase}"
                        "\nbs:${usedList[usedIndex].company.bs}}"








                    ,
                    style: TextStyle(

                     height: 1.6,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black))
                ,
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
