import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewieWidget extends StatefulWidget {
  const ChewieWidget({Key? key}) : super(key: key);

  @override
  State<ChewieWidget> createState() => _ChewieWidgetState();
}

class _ChewieWidgetState extends State<ChewieWidget> {
  late VideoPlayerController controller;
  late ChewieController chewieController;

  double? value;
  List<VideoPlayerController> _availableQualities = [
    VideoPlayerController.network(
        "https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_480_1_5MG.mp4"),
    VideoPlayerController.network(
        "https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_640_3MG.mp4"),
    VideoPlayerController.network(
        "https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_1280_10MG.mp4"),
  ];

  @override
  void initState() {
    _initPlayer();

    super.initState();
  }

  void _initPlayer() {
    controller = VideoPlayerController.network(
      'https://file-examples.com/storage/fe21053bab6446bba9a0947/2017/04/file_example_MP4_640_3MG.mp4',
    );
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((_) {
      setState(() {});
    });
    _availableQualities.add(
        VideoPlayerController.network("https://example.com/video_240p.mp4"));
    _availableQualities.add(
        VideoPlayerController.network("https://example.com/video_480p.mp4"));
    _availableQualities.add(
        VideoPlayerController.network("https://example.com/video_720p.mp4"));

    chewieController = ChewieController(
      videoPlayerController: controller,
      autoPlay: false,
      looping: true,
      showOptions: true,
      allowMuting: true,
      allowPlaybackSpeedChanging: true,
      allowFullScreen: true,
    );
  }

  void skipForward() {
    Duration currentPosition = controller.value.position;
    Duration newPosition = currentPosition + Duration(seconds: 10);
    controller.seekTo(newPosition);
  }

  void backForward() {
    Duration currentPosition = controller.value.position;
    Duration newPosition = currentPosition - Duration(seconds: 10);
    controller.seekTo(newPosition);
  }

  @override
  void disposeChewie() {
    controller.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        InkWell(
          onTap: () {
            if (controller.value.isPlaying) {
              controller.pause();
            } else {
              chewieController.play();
            }
          },
          child: Container(
            width: double.infinity,
            height: 300,
            child: chewieController != null
                ? Chewie(controller: chewieController!)
                : Container(
                    color: Colors.red,
                  ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onDoubleTap: () {
                skipForward();
              },
              child: Container(
                height: 150,
                width: 120,
                color: Colors.red,
              ),
            ),
            Spacer(),
            InkWell(
              onDoubleTap: () {
                backForward();
              },
              child: Container(
                height: 150,
                width: 120,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
