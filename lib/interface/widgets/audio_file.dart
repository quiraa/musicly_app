import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:musicly_app/data/model/songs.dart';

class AudioFile extends StatefulWidget {
  final Songs song;
  final AudioPlayer advancedPlayer;

  const AudioFile({
    super.key,
    required this.advancedPlayer,
    required this.song,
  });

  @override
  _AudioFileState createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  Duration _duration = const Duration();
  Duration _position = const Duration();

  bool isPlaying = false;
  bool isPaused = false;
  bool isLoop = false;
  bool isRepeat = false;

  Color color = Colors.black;

  final List<IconData> _icons = [
    Icons.play_circle_fill_rounded,
    Icons.pause_circle_filled_rounded,
  ];

  @override
  void initState() {
    super.initState();
    widget.advancedPlayer.onDurationChanged.listen((duration) {
      setState(() => _duration = duration);
    });
    widget.advancedPlayer.onPositionChanged.listen((position) {
      setState(() => _position = position);
    });

    widget.advancedPlayer.setSourceUrl(widget.song.audio ?? '');

    widget.advancedPlayer.onPlayerComplete.listen((event) {
      setState(() {
        _position = const Duration(seconds: 0);
        if (isRepeat == true) {
          isPlaying = true;
        } else {
          isPlaying = false;
          isRepeat = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _position.toString().split('.')[0],
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                _duration.toString().split('.')[0],
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        audioSlider(),
        loadAsset(),
      ],
    );
  }

  Widget buttonStart() {
    return IconButton(
      iconSize: 50,
      onPressed: () {
        if (isPlaying == false) {
          widget.advancedPlayer.play(AssetSource(widget.song.audio ?? ''));
          setState(() => isPlaying = true);
        } else if (isPlaying == true) {
          widget.advancedPlayer.pause();
          setState(() => isPlaying = false);
        }
      },
      icon: isPlaying == false
          ? Icon(
              _icons[0],
              color: Colors.blue,
            )
          : Icon(
              _icons[1],
              color: Colors.blue,
            ),
      padding: const EdgeInsets.only(bottom: 10),
    );
  }

  Widget buttonRepeat() {
    return IconButton(
      onPressed: () {
        if (isRepeat == false) {
          widget.advancedPlayer.setReleaseMode(ReleaseMode.loop);
          setState(() {
            isRepeat = true;
            color = Colors.blue;
          });
        } else if (isRepeat == true) {
          widget.advancedPlayer.setReleaseMode(ReleaseMode.release);
          setState(() {
            isRepeat = false;
            color = Colors.black;
            isRepeat = false;
          });
        }
      },
      icon: Icon(
        Icons.repeat_rounded,
        color: color,
      ),
    );
  }

  Widget buttonLoop() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.loop_outlined),
    );
  }

  Widget buttonFastForward() {
    return IconButton(
      onPressed: () {
        widget.advancedPlayer.setPlaybackRate(1.5);
      },
      icon: const Icon(Icons.fast_forward_rounded),
    );
  }

  Widget buttonSlowRewind() {
    return IconButton(
      onPressed: () {
        widget.advancedPlayer.setPlaybackRate(0.5);
      },
      icon: const Icon(Icons.fast_rewind_rounded),
    );
  }

  Widget loadAsset() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buttonRepeat(),
        buttonSlowRewind(),
        buttonStart(),
        buttonFastForward(),
        buttonLoop(),
      ],
    );
  }

  Widget audioSlider() {
    return Slider(
      activeColor: Colors.blueAccent,
      inactiveColor: Colors.grey,
      value: _position.inSeconds.toDouble(),
      min: 0.0,
      max: _duration.inSeconds.toDouble(),
      onChanged: (double value) => setState(() {
        changeToSecond(value.toInt());
        value = value;
      }),
    );
  }

  void changeToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    widget.advancedPlayer.seek(newDuration);
  }
}
