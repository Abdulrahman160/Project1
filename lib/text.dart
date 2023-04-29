// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<bool> isSelected = [true, false];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Grid/List View Demo"),
//       ),
//       body: Column(
//         children: [
//           ToggleButtons(
//             color: Colors.greenAccent,
//             selectedColor: Colors.white,
//             children: [
//               Icon(Icons.grid_view),
//               Icon(Icons.list),
//             ],
//             onPressed: (int index) {
//               setState(() {
//                 for (int i = 0; i < isSelected.length; i++) {
//                   isSelected[i] = i == index;
//                 }
//               });
//             },
//             isSelected: isSelected,
//           ),
//           Expanded(
//             child: isSelected[0]
//                 ? GridView.builder(
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                     ),
//                     itemBuilder: (BuildContext context, int index) {
//                       return Container(
//                         child: Center(
//                           child: Text(
//                             "Item $index",
//                             style: TextStyle(fontSize: 24),
//                           ),
//                         ),
//                       );
//                     },
//                     itemCount: 10,
//                   )
//                 : ListView.builder(
//                     itemBuilder: (BuildContext context, int index) {
//                       return Container(
//                         padding: EdgeInsets.all(16),
//                         child: Text(
//                           "Item $index",
//                           style: TextStyle(fontSize: 24),
//                         ),
//                       );
//                     },
//                     itemCount: 10,
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer(){
    controller = VideoPlayerController.network('https://file-examples.com/storage/fe21053bab6446bba9a0947/2017/04/file_example_MP4_640_3MG.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value){
      setState(() {});
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Play Video from Assets/URL"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
          child: Column(
              children:[
                AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                ),

                Container( //duration of video
                  child: Text("Total Duration: " + controller.value.duration.toString()),
                ),

                Container(
                    child: VideoProgressIndicator(
                        controller,
                        allowScrubbing: true,
                        colors:VideoProgressColors(
                          backgroundColor: Colors.redAccent,
                          playedColor: Colors.green,
                          bufferedColor: Colors.purple,
                        )
                    )
                ),

                Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: (){
                            if(controller.value.isPlaying){
                              controller.pause();
                            }else{
                              controller.play();
                            }

                            setState(() {

                            });
                          },
                          icon:Icon(controller.value.isPlaying?Icons.pause:Icons.play_arrow)
                      ),

                      IconButton(
                          onPressed: (){
                            controller.seekTo(Duration(seconds: 0));

                            setState(() {

                            });
                          },
                          icon:Icon(Icons.stop)
                      )
                    ],
                  ),
                )
              ]
          )
      ),
    );
  }
}