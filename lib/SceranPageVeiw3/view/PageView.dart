import 'package:flutter/material.dart';

import '../../constants/assets.dart';
import '../../constants/colors.dart';
import '../widget/card_item.dart';
import '../widget/cared_item_model.dart';
import '../widget/massege_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations
                          .of(context)
                          .openAppDrawerTooltip,
                    );
                  },
                ),
                Spacer(),
                Image.asset(Assets.logo, height: 33),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none,
                    color: Colors.black.withOpacity(0.8),
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ContainerMessage(
              title: "رسائل اليوم",
              message:
              " الرجاء الانتباه لموعد الميتنج في تمام الساعه 04:00 عصرا \n وعلى الجميع ضرورة الحضور ",
              senderName: "م/إبراهيم الرفاعي",
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "أهلا رشا  السيد ,",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Text(
              "السبت , 5مايو,2021",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.bold,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                cardItemList.map((e) => CardItemView(cardItem: e)).toList(),

              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(Assets.ammar),
                  radius: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "م.إبراهيم الرفاعي",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "منذ يوم",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "المؤتمر السنوي للشركات البرمجة لعرض أسعار المشاريع ومتطلبات المجتمع التكنولوجي",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(
                  Icons.send,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 15,
                ),
                Container(

                  height: 35,
                  width: 280,
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    cursorColor: Colors.black54,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.4),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: "اكتب تعليق",
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
