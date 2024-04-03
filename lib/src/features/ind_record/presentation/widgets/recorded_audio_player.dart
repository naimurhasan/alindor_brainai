
import 'package:alindor_brainai/src/core/utils/constants.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';

class RecordedAudioPlayer extends StatefulWidget {
  final String filePath;
  const RecordedAudioPlayer(this.filePath, {super.key});

  @override
  State<RecordedAudioPlayer> createState() => _RecordedAudioPlayerState();
}

class _RecordedAudioPlayerState extends State<RecordedAudioPlayer> {
  PlayerController controller = PlayerController();

  bool isPlaying = false;

  void initWave() async {
    await controller.preparePlayer(
      path: widget.filePath,
      shouldExtractWaveform: true,
      noOfSamples: 100,
      volume: 1.0,
    );
  }

  @override
  void initState() {
    initWave();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.all(AppSizes.padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.borderRadius),
        border: Border.all(color: AppColors.btnBorder),
      ),
      child: Row(
        children: [
          InkWell(
              onTap: () async {
                if (controller.playerState.isPlaying) {
                  await controller.pausePlayer();
                } else {
                  await controller.seekTo(0);
                  await controller.startPlayer(finishMode: FinishMode.pause);
                }
              },
              child: Icon(
                isPlaying ? Icons.stop_circle : Icons.play_circle,
                size: 30.0,
              )),
          const SizedBox(width: AppSizes.padding),
          Expanded(
            child: AudioFileWaveforms(
              size: Size(MediaQuery.of(context).size.width, 100.0),
              playerController: controller,
              enableSeekGesture: true,
              waveformType: WaveformType.long,
              waveformData: const [],
              playerWaveStyle: const PlayerWaveStyle(
                fixedWaveColor: Colors.white54,
                liveWaveColor: Colors.blueAccent,
                spacing: 6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
