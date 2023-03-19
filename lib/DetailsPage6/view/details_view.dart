import 'package:flutter/material.dart';
import 'package:project_1/DetailsPage6/widget/rating_model.dart';

import '../widget/header_section_view.dart';
import '../widget/message_model.dart';
import '../widget/message_view.dart';
import '../widget/ratings_view.dart';
import '../widget/work_details.dart';
import '../widget/work_details_model.dart';

class DetailsPageView extends StatelessWidget {
  const DetailsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff5815BD),
        leading: Icon(Icons.arrow_back),
        title: Text("تفاصيل الفني"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade400,
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 55,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "إيهاب إيهاب طلعت ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "صيانه تجارية ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        radius: 25,
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => WorkDetails(
                              workDetailsModel: workDetails[index],
                            ),
                        separatorBuilder: (context, index) {
                          return Container(
                            width: 1,
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            color: Colors.grey,
                          );
                        },
                        itemCount: workDetails.length),
                  ),
                ),
                HeaderSectionView(
                  title: 'التقيمات',
                ),
                Row(
                  children: [
                    RatingsView(
                      ratingModel: ratingDetails[0],
                    ),
                    Spacer(),
                    RatingsView(
                      ratingModel: ratingDetails[1],
                    ),
                    Spacer(),
                  ],
                ),
                Row(
                  children: [
                    RatingsView(
                      ratingModel: ratingDetails[2],
                    ),
                    Spacer(),
                    RatingsView(
                      ratingModel: ratingDetails[3],
                    ),
                    Spacer(),
                  ],
                ),
                HeaderSectionView(
                  title: 'تعليقات العملاء',
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => MessageView(
                    messageModel: messageDetails[index],
                  ),
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    );
                  },
                  itemCount: messageDetails.length,
                )
              ],
            ),
          ),
          // ToolTip
          Column(
            children: [
              Container(
                height: 5,
                width: double.infinity,
                decoration:
                    BoxDecoration(color: Colors.transparent, boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    color: Colors.grey.withOpacity(0.2),
                    blurStyle: BlurStyle.solid,
                  )
                ]),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 18.0,
                  horizontal: 20,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff5815BD),
                      elevation: 0,
                    )
                    ,
                    onPressed: () {},
                    child: SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "تقيم النفي ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
