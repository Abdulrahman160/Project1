import 'package:flutter/material.dart';
import 'package:project_1/constants/colors.dart';

import '../../constants/assets.dart';
import '../widget/card_item.dart';
import '../widget/custom_container.dart';
import '../widget/general_information_page.dart';
import '../widget/header_sectoin.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  State<ProfilePageView> createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "المعلن",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.flag,
              color: Colors.black,
              size: 30,
            ),
          ),
          Icon(
            Icons.share,
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              // shrinkWrap: true,
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          height: 300,
                          child: Image.asset(
                            Assets.car,
                          ),
                        ),
                        CircleAvatar(
                            radius: 58,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(Assets.ammar),
                              radius: 55,
                            ))
                      ],
                    ),
                    Text(
                      "معرض الحاج وليد",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "01234567890",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      GeneralInfoPage(
                        icon: Icons.access_time,
                        title: 'اخر ظهور',
                        text: 'منذ ساعه',
                      ),
                      GeneralInfoPage(
                        icon: Icons.date_range,
                        title: 'تاريخ الانضمام',
                        text: 'فبراير 22-2020',
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFFD700),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFD700),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFD700),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFFD700),
                          ),
                          Icon(
                            Icons.star_border,
                            color: Color(0xffFFD700),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "12 متابع",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          CustomContainer(
                            text: 'متابعة',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CustomContainer(
                              text: 'ارسال الرسالة',
                              enableIcon: true,
                              icon: Icons.email,
                              borderColor: true),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                DefaultTabController(
                  initialIndex: 0,
                  length: 2,
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: AppColors.kGreen,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.black,
                    controller: _tabController,
                    tabs: [
                      Text(
                        "إعلانات المستخدم",
                      ),
                      Text(
                        "تقييمات المستخدمين",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 300,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(shrinkWrap: true,
                          itemBuilder: (context, index) => CardItems(),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 10,
                          ),
                          itemCount: 3,
                        ),
                      ),
                      Text("Haloo"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
