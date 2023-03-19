import 'package:flutter/material.dart';
import 'package:project_1/Membership4/widget/text_field.dart';


import '../../constants/colors.dart';
import '../widget/style.dart';

class MembershipView extends StatefulWidget {
  const MembershipView({Key? key}) : super(key: key);

  @override
  State<MembershipView> createState() => _MembershipViewState();
}

class _MembershipViewState extends State<MembershipView> {
  @override
  Widget build(BuildContext context) {
    bool checkBoxValue = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.KWhite,
        elevation: 2,
        title: Text(
          "توثيق العضوية",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "توثيق العضوية",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "من فضلك قم بملئ البيانات التالية حتى نساعدك في توثيق \nعضويتك في معاضة",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              "النشاط التجاري*",
              style: Style.filedTitle,
            ),
          ),
          Container(
            height: 55,
            child: DropdownButtonFormField(
              items: [],
              onChanged: (value) {},
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "النشاط التجاري",
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFieldView(
            title: "اسم المنشأه",
            hintText: "اسم المنشأه",
          ),
          TextFieldView(
            title: "اسم مقدم الطلب",
            hintText: "اسم مقدم الطلب",
          ),
          TextFieldView(
            title: "رقم الجوال",
            hintText: "رقم الجوال",
            keyboardType: TextInputType.phone,
          ),
          TextFieldView(
            title: "الموقع الاكتروني",
            hintText: "الموقع الاكتروني",
          ),
          TextFieldView(
            backgroundColor: Colors.white.withOpacity(0.1),
            numberOfLine: 4,
            height: 110,
            title: "إضافة ملاحظات",
            hintText: "إضافة ملاحظات هنا",
            color: Colors.grey,
            borderEnable: true,
          ),
          Row(
            children: [
              Checkbox(
                value: checkBoxValue,
                onChanged: (bool? newValue) {
                  checkBoxValue = newValue!;
                  setState(() {});
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Text(
                "أوافق على الشروط والاحكام بموقع معاوضة",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
