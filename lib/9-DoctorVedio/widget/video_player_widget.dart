import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({Key? key}) : super(key: key);

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController controller;
  double? value;

  @override
  void initState() {
    super.initState();
    print("------------------------------------------------------");
    controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    )..initialize().then((_) {
        setState(() {});
      });
    print('controller ${controller.dataSource}');
    print("***************************************" * 4);

    print(controller.value.isInitialized);
    print("***************************************" * 4);

    controller.setLooping(true);
    controller.initialize().then((_) => setState(() {}));
    controller.play();
  }

  @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  void skipForward() {
    Duration currentPosition = controller.value.position;
    Duration newPosition = currentPosition + Duration(seconds: 1);
    controller.seekTo(newPosition);
  }

  void backForward() {
    Duration currentPosition = controller.value.position;
    Duration newPosition = currentPosition - Duration(seconds: 1);
    controller.seekTo(newPosition);
  }

  valueTime() {
    setState(() {
      value = controller.value.position.inSeconds.toDouble();
    });
    return value;
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
                  controller.play();
                }
              },
              child: Container(
                width: double.infinity,
                height: 300,
                child: controller.value.isInitialized
                    ? VideoPlayer(
                        controller,
                      )
                    : Container(
                        color: Colors.red,
                      ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onDoubleTap: () {
                    skipForward();
                  },
                  child: Container(
                    height: 280,
                    width: 120,
                    color: Colors.transparent,
                  ),
                ),
                Spacer(),
                InkWell(
                  onDoubleTap: () {
                    backForward();
                  },
                  child: Container(
                    height: 280,
                    width: 120,
                    color: Colors.transparent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
              child: Slider(
                value: valueTime(),
                min: 0.0,
                max: valueTime(),
                onChanged: (double value) {
                  setState(() {
                    controller.seekTo(Duration(seconds: value.toInt()));
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
