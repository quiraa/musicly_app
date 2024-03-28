import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:musicly_app/interface/pages/music_page.dart';
import 'package:musicly_app/interface/widgets/popular_song_card.dart';
import 'package:musicly_app/data/model/songs.dart' as Songs;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tag = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(context),
    );
  }

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          padding: const EdgeInsets.only(right: 8),
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search),
        ),
        IconButton(
          padding: const EdgeInsets.only(right: 8),
          onPressed: () {},
          icon: const Icon(CupertinoIcons.bell),
        ),
      ],
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildHeader(),
          buildHorizontalRecommendation(context),
          buildHorizontalCategory(context),
          Flexible(child: buildVerticalRecommendation(context)),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Text(
        'Popular Songs',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget buildHorizontalRecommendation(BuildContext context) {
    return SizedBox(
      height: 186,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(16),
        itemCount: Songs.popularSongs.length,
        separatorBuilder: (context, _) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final song = Songs.popularSongs[index];
          return PopularSongCard(
            song: song,
            onSongClick: (song) {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => MusicPage(song: song),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget buildHorizontalCategory(BuildContext context) {
    return ChipsChoice<int>.single(
      value: tag,
      onChanged: (newValue) {
        setState(() => tag = newValue);
      },
      choiceItems: C2Choice.listFrom<int, String>(
        source: Songs.songsCategories,
        value: (i, v) => i,
        label: (i, v) => v,
      ),
      choiceStyle: C2ChipStyle.filled(borderRadius: BorderRadius.circular(16)),
    );
  }

  Widget buildVerticalRecommendation(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: Songs.recommendedSongs.length,
      separatorBuilder: (context, _) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final song = Songs.recommendedSongs[index];
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => MusicPage(song: song),
              ),
            );
          },
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Hero(
              tag: song.title ?? '',
              child: Image.network(song.image ?? ''),
            ),
          ),
          title: Text(
            song.title ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          subtitle: Text(song.artist ?? ''),
        );
      },
    );
  }
}
