import 'package:flutter/material.dart';

class MyList {
  final int id;
  final String name;
  double degree;
  MyList(this.id, this.name, this.degree);
}

List _getNewList(){
  List newList = [];
  MyList newlist1 = MyList(1, 'sar', 25.0);
  newList.add(newlist1);
  MyList newlist2 = MyList(2, 'Moh', 10.0);
  newList.add(newlist2);
  MyList newlist3 = MyList(3, 'John', 12.0);
  newList.add(newlist3);

  return newList;
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

  List _newList = _getNewList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            double _value = _newList[index].degree;
            return Column(
              children: [
                Text(_newList[index].id.toString()),
                Text(_newList[index].name),
                Slider(
                    value: _value,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    label: _value.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _value = value;
                        _newList[index].degree = value;
                      });
                    }),
              ],
            );
          },
          itemCount: _newList.length,
        ));
  }
}