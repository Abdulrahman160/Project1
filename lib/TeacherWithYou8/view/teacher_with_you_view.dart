import 'package:flutter/material.dart';
import 'package:project_1/constants/assets.dart';

import '../widget/teacger_container_vertical_view.dart';
import '../widget/teacher_container_herizontal_view.dart';

class TeacherWithYou extends StatefulWidget {
  const TeacherWithYou({Key? key}) : super(key: key);

  @override
  State<TeacherWithYou> createState() => _TeacherWithYouState();
}

List<bool> isSelected = [true, false];

class _TeacherWithYouState extends State<TeacherWithYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "المعلمين المنضم لهم",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
              width: 1,
            ),
          ),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: SizedBox(
                    height: 40,
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 17.0,
                        height: 2.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 20,
                        ),
                        hintText: "ادخل اسم او كود المعلم او اسم الماده",
                        hintStyle: TextStyle(fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: ToggleButtons(
                    color: Colors.grey,
                    fillColor: Colors.white,
                    selectedColor: Colors.purple,
                    children: [
                      Icon(Icons.list),
                      Icon(Icons.grid_view),
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
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 600,
                  child: isSelected[1]
                      ? GridView.builder(
                          itemCount: 10,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1 / 1.7,
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) =>
                              TeacherContainerVerticalView(),
                        )
                      : ListView.separated(
                          itemBuilder: (context, index) =>
                              TeacherContainerHorizontalView(),
                          separatorBuilder: (context, index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Divider(
                                  color: Colors.grey,
                                  height: 2,
                                ),
                              ),
                          itemCount: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
