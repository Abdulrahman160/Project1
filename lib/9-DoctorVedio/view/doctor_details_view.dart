import 'package:flutter/material.dart';
import 'package:project_1/constants/assets.dart';
import 'package:video_player/video_player.dart';

import '../../constants/colors.dart';
import '../widget/chewi_widget.dart';


class DoctorDetailsView extends StatefulWidget {
  const DoctorDetailsView({Key? key}) : super(key: key);

  @override
  State<DoctorDetailsView> createState() => _DoctorDetailsViewState();
}

class _DoctorDetailsViewState extends State<DoctorDetailsView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  late VideoPlayerController controller;
  Widget? image;

  @override
  void initState() {
    _tabController = new TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          image = _isSliverAppBarExpanded
              ? CircleAvatar(
                  backgroundImage: AssetImage(Assets.AnIdeal),
                  radius: 25,
                )
              : null;
        });
      });
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                toolbarHeight: 70,
                leadingWidth: 60,
                expandedHeight: 200,
                leading: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  child: Icon(Icons.arrow_back),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white),
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  title: image,
                  centerTitle: true,
                  background: Image.asset(
                    Assets.AnIdeal,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: Column(
            children: [
              TabBar(
                padding: EdgeInsets.symmetric(vertical: 15),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: AppColors.KPurple,
                unselectedLabelColor: Colors.grey,
                labelColor: AppColors.KPurple,
                controller: _tabController,
                tabs: [
                  Text(
                    "معلومات عن الدكتور",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text("الامتحانات القادمه")
                ],
              ),
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            Text(
                              "دكتور احمد موسى دومة",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "#23820",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: Text(
                            "كلية الهندسة جامعة المنصوره_قسم الميكانيكا",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Text(
                          "هذا النص مثال لنص يمكن ان يستبدل في نفس المساحه " *
                              3,
                          style: TextStyle(
                            color: Colors.black.withOpacity(.4),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.people_alt_outlined,
                                color: Colors.black.withOpacity(.6),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  "عدد المنضمين :",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "380 طالب ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: ChewieWidget(),
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        // SizedBox(
                        //   height: 320,
                        //   width: 300,
                        //   child: VideoPlayerWidget(),
                        // ),
                      ],
                    ),
                  ),
                  Center(
                    child: Text(
                      "الامتحانات القادمه",
                      style: TextStyle(color: AppColors.KPurple, fontSize: 30),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
