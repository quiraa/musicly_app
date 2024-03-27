import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:musicly_app/presentation/widgets/audio_file.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  late AudioPlayer advancedPlayer;

  @override
  void initState() {
    super.initState();
    advancedPlayer = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          height: screenHeight / 2,
          child: Container(
            color: Colors.lightBlue,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: AppBar(
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.chevron_back,
                color: Colors.white,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: screenHeight * 0.2,
          height: screenHeight * 0.36,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(0, 10),
                  blurRadius: 8,
                )
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.1),
                Text(
                  'Audio Name',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Martin Garrix',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                AudioFile(advancedPlayer: advancedPlayer)
              ],
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.12,
          left: (screenWidth - 150) / 2,
          right: (screenWidth - 150) / 2,
          height: screenHeight * 0.16,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white, width: 2),
              color: Colors.grey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Placeholder(),
            ),
          ),
        )
      ],
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 150,
      color: Colors.lightBlue,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.chevron_back,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildAudioPlayer(BuildContext context) {
    return Stack(
      children: [
        buildHeader(context),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Text('Audio Name'),
            ],
          ),
        )
      ],
    );
  }
}