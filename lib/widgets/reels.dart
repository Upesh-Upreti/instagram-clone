import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/constants.dart';
import 'package:marquee_text/marquee_text.dart';
import 'package:video_player/video_player.dart';

class Reels extends StatefulWidget {
  const Reels({super.key, required this.videoId});
  final String videoId;

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  late VideoPlayerController _controller;
  bool _isMuted = false;
  bool _showVolumeInfo = false;

  void _muteUnmute() {
    setState(() {
      _isMuted = !_isMuted;
      _showVolumeInfo = true;
    });
    _controller.setVolume(_isMuted ? 0 : 1);
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        // Hide the widget.
        _showVolumeInfo = false;
      });
    });
  }

  Widget _volumeInfo() {
    if (_showVolumeInfo) {
      return _isMuted
          ? const Icon(
              Icons.volume_off,
              color: Color.fromARGB(255, 216, 211, 211),
              size: 70,
            )
          : const Icon(
              Icons.volume_up,
              color: Color.fromARGB(255, 216, 211, 211),
              size: 70,
            );
    }
    return Container();
  }

  @override
  void initState() {
    super.initState();
    final _video = widget.videoId;
    _controller = VideoPlayerController.asset('assets/videos/$_video.mp4')
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _controller.value.isInitialized
                ? GestureDetector(
                    onTap: _muteUnmute,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: VideoPlayer(_controller),
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
          Center(
            child: _volumeInfo(),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 70,
              height: 300,
              color: Colors.transparent,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: const Column(
                        children: [
                          Icon(
                            Icons.favorite_border,
                            size: 35,
                            color: Colors.white,
                          ),
                          Text(
                            '12k',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: const Column(
                        children: [
                          Icon(
                            Icons.message_outlined,
                            size: 35,
                            color: Colors.white,
                          ),
                          Text(
                            '12k',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: const Column(
                        children: [
                          Icon(
                            Icons.share,
                            size: 35,
                            color: Colors.white,
                          ),
                          Text(
                            '12k',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: const Column(
                        children: [
                          Icon(
                            Icons.more_vert,
                            size: 35,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: const Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              Constants.AVATAR_IMAGE,
                            ),
                            maxRadius: 20,
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.60,
                color: Color.fromARGB(125, 24, 21, 21),
                child: const Row(children: [
                  Icon(
                    Icons.music_note,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MarqueeText(
                    text: TextSpan(
                      text: 'Heal your mind and soul !!',
                    ),
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    speed: 30,
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
