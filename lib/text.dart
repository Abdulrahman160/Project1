import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid/List View Demo"),
      ),
      body: Column(
        children: [
          ToggleButtons(
            color: Colors.greenAccent,
            selectedColor: Colors.white,
            children: [
              Icon(Icons.grid_view),
              Icon(Icons.list),
            ],
            onPressed: (int index) {
              setState(() {
                for (int i = 0; i < isSelected.length; i++) {
                  isSelected[i] = i == index;
                }
              });
            },
            isSelected: isSelected,
          ),
          Expanded(
            child: isSelected[0]
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Center(
                          child: Text(
                            "Item $index",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      );
                    },
                    itemCount: 10,
                  )
                : ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Item $index",
                          style: TextStyle(fontSize: 24),
                        ),
                      );
                    },
                    itemCount: 10,
                  ),
          ),
        ],
      ),
    );
  }
}
