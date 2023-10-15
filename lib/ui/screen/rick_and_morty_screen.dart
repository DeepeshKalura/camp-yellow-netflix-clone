import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

import '../../utils/about.dart';
import '../../utils/icons.dart';
import '../../utils/videos.dart';
import '../widget/about_episode_widget.dart';
import '../widget/action_freame_widget.dart';
import '../widget/episode_widet.dart';
import '../widget/info_widget.dart';
import '../widget/more_like_this_widget.dart';

class RickAndMortyScreen extends StatefulWidget {
  const RickAndMortyScreen({super.key});

  @override
  State<RickAndMortyScreen> createState() => _RickAndMortyScreenState();
}

class _RickAndMortyScreenState extends State<RickAndMortyScreen>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController _controller;
  late TabController _tabController;

  late final height = MediaQuery.of(context).size.height;
  final title = 'Rick and Morty';
  final actionMessage = "New episode coming on Monday";

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(VideoUtils.rickandMory,
        videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: true,
          allowBackgroundPlayback: true,
        ))
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      });

    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              IconUtils.search,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                width: double.infinity,
                height: height * 0.35,
                child: VideoPlayer(_controller),
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const InfoWidget(
              airYear: AboutUtil.airYear,
              categories: AboutUtil.categories,
              season: AboutUtil.season,
              quality: AboutUtil.quality,
            ),
            Text(
              actionMessage,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.white,
                  ),
                  iconColor: const MaterialStatePropertyAll(Colors.black)),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.play_arrow,
                    size: 24,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Play',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.file_download,
                    size: 24,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Download S6:E1',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const AboutEpisodeWidget(),
            const SizedBox(height: 10),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFF2F2F2F),
                    width: 1.2,
                  ),
                ),
              ),
              width: double.infinity,
              height: 85,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  ActionFrameWidget(
                    icon: Icons.add,
                    subtitle: 'My List',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ActionFrameWidget(
                    icon: Icons.thumb_up,
                    subtitle: 'Rate',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ActionFrameWidget(
                    icon: Icons.share,
                    subtitle: 'Share',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ActionFrameWidget(
                    icon: Icons.download,
                    subtitle: 'Download',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            TabBar(
              isScrollable: true,
              controller: _tabController,
              indicator: const BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.rectangle,
                border: Border(
                  top: BorderSide(
                    color: Color(0xFFE50913),
                    width: 4,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              labelColor: Colors.white,
              labelStyle: Theme.of(context).textTheme.bodySmall,
              tabs: const [
                Tab(
                  text: 'Episodes',
                ),
                Tab(
                  text: 'More Like This',
                ),
              ],
            ),
            SizedBox(
              height: 400,
              width: double.infinity,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  EpisodesWidget(),
                  MoreLikeThisWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
