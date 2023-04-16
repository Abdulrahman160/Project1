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

  @override
  void initState() {
    _initPlayer();

    super.initState();
  }

  void _initPlayer() {
    controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    )..initialize().then((_) {
        setState(() {});
      });
    chewieController = ChewieController(
      videoPlayerController: controller,
      autoPlay: false,
      looping: true,
      showOptions: true,
      allowMuting: true,
      allowPlaybackSpeedChanging: true,

    );
  }

  @override
  void disposeChewie() {
    controller.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
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
            // Row(
            //   children: [
            //     InkWell(
            //       onDoubleTap: () {
            //         skipForward();
            //       },
            //       child: Container(
            //         height: 280,
            //         width: 120,
            //         color: Colors.transparent,
            //       ),
            //     ),
            //     Spacer(),
            //     InkWell(
            //       onDoubleTap: () {
            //         backForward();
            //       },
            //       child: Container(
            //         height: 280,
            //         width: 120,
            //         color: Colors.transparent,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ],
    );
  }
}
