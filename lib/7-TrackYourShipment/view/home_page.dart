import 'package:flutter/material.dart';

import '../../constants/assets.dart';
import '../widget/promotion_view.dart';
import '../widget/service_container.dart';
import '../widget/service_container_model.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff320F75),
      drawer: Drawer(),
      body: Stack(
        children: [
          Container(
            child: Image.asset(Assets.pattern2,fit: BoxFit.fill),
            height: double.infinity,
            width: double.infinity,
          ),
          ListView(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Icon(
                      Icons.notifications,
                      size: 25,
                    ),
                  ),
                ],
                title: Image.asset(
                  Assets.logo1,
                  height: 70,
                  width: 70,
                ),
                centerTitle: true,
                elevation: 0,
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "تتبع شحنتك",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "من فضلك ادخل رقم الشحنة او الكيو ار كود",
                  style: TextStyle(
                    color: Colors.white.withOpacity(.7),
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "ادخل رقم الشحنه",
                            contentPadding: EdgeInsets.only(top: 7),
                            prefixIcon: Image.asset(
                              Assets.box,
                              height: 20,
                              width: 20,
                            ),
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        width: 70,
                        height: 40,
                        margin: EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          Assets.scan,
                          height: 60,
                          width: 60,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "مرحبا مهند.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "ما الخدمة التي تبحث عنها اليوم ؟",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: serviceModel.length,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.0,
                            mainAxisSpacing: 20.0),
                        itemBuilder: (context, index) => ContainerServiceView(
                              serviceModel: serviceModel[index],
                            )),
                    PromotionContainerView(
                      title: "أشترك في تطبيق التاجر",
                      text:
                          "رقي الي تطبيق التاجر ونفذ العديد من \nالشحنات بأفضل الأسعار ,تعرف على \nالأحصائيات و العديد من المميزات",
                      color: Color(0xff611EC7),
                    ),
                    PromotionContainerView(
                      title: "أشترك في تطبيق المطاعم",
                      text:
                          "رقي الي تطبيق المطاعم وانقل الطلبات في\n اسرع وقت وبأفضل الأسعار ,تعرف\nعلي الاحصائيات و العديد من المميزات",
                      color: Color(0xfff5a419),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "عروض اليوم ",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "عرض المزيد",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Color(0xffFAEDB1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "ابدا شحنتك الان و\nاحصل على خصم\n",
                            style: TextStyle(
                                color: Color(0xff320391), fontSize: 23),
                          ),
                          Text(
                            "15    %",
                            style: TextStyle(
                                color: Color(0xff320391), fontSize: 23),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
