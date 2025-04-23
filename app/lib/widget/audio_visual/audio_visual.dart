import 'dart:math';

import 'package:b_be_bee_app/widget/audio_visual/painter/bars_painter.dart';
import 'package:b_be_bee_app/widget/audio_visual/painter/fft_painter.dart';
import 'package:b_be_bee_app/widget/audio_visual/painter/spectrum_painter.dart';
import 'package:b_be_bee_app/widget/audio_visual/painter/wave_form2_painter.dart';
import 'package:b_be_bee_app/widget/audio_visual/painter/wave_form_painter.dart';
import 'package:b_be_bee_app/widget/audio_visual/params/model_params.dart';
import 'package:b_be_bee_app/widget/audio_visual/params/shader_params.dart';
import 'package:b_be_bee_app/widget/audio_visual/shaders/shader.dart';
import 'package:b_be_bee_app/widget/audio_visual/shaders/shaders.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

class AudioVisual extends ConsumerWidget {
   AudioVisual({super.key});

  final ModelParams model =  ModelParams(
      backgroundColor: Colors.transparent,
      shaderParams: ShaderParams(
        shaderName: Shaders.shaderParams[0].shaderName,
        shaderPath: Shaders.shaderParams[0].shaderPath,
        params: Shaders.shaderParams[0].params,
        paramsRange: Shaders.shaderParams[0].paramsRange,
      ),
      barGradient:  LinearGradient(
        colors: [
          Color.fromARGB(255, 200, 0, 0),
          Color.fromARGB(255, 253, 233, 58),
          Color.fromARGB(255, 0, 200, 0),
          Colors.black,
          Color.fromARGB(255, 0, 200, 0),
          Color.fromARGB(255, 253, 233, 58),
          Color.fromARGB(255, 200, 0, 0),
        ],
        stops: [0.0, 0.4, 0.495, 0.5, 0.505, 0.6, 1.0],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )
    // backgroundColor: Colors.transparent,
    // barGradient: model.fluxType == FluxType.waveform
    //     ? const LinearGradient(
    //   colors: [
    //     Color.fromARGB(255, 200, 0, 0),
    //     Color.fromARGB(255, 253, 233, 58),
    //     Color.fromARGB(255, 0, 200, 0),
    //     Colors.black,
    //     Color.fromARGB(255, 0, 200, 0),
    //     Color.fromARGB(255, 253, 233, 58),
    //     Color.fromARGB(255, 200, 0, 0),
    //   ],
    //   stops: [0.0, 0.4, 0.495, 0.5, 0.505, 0.6, 1.0],
    //   begin: Alignment.topCenter,
    //   end: Alignment.bottomCenter,
    // )
    //     : const LinearGradient(
    //   colors: [
    //     Color.fromARGB(255, 200, 0, 0),
    //     Color.fromARGB(255, 253, 233, 58),
    //     Color.fromARGB(255, 0, 200, 0),
    //   ],
    //   stops: [0, 0.6, 1.0],
    //   begin: Alignment.topCenter,
    //   end: Alignment.bottomCenter,
    // ),
  );

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                CustomPaint(
                  painter: BarsPainter(_waveData,model),
                  size: Size.infinite,
                ),
                // CustomPaint(
                //   painter: FFTPainter(_fftData,model),
                //   size: Size.infinite,
                // ),
                // CustomPaint(
                //   painter: SpectrumPainter(_fftData,model),
                //   size: Size.infinite,
                // ),
                // CustomPaint(
                //   painter: WaveFromPainter(_waveData,model),
                //   size: Size.infinite,
                // ),
                // CustomPaint(
                //   painter: WaveFrom2Painter(_waveData,model),
                //   size: Size.infinite,
                // ),
                // ShaderWidget(
                //   data: [..._fftData,..._waveData],
                //   params: model,
                // ),
              ],
        ),
    );
  }
}



class ControlButtons extends StatelessWidget {
  final AudioPlayer player;

  const ControlButtons(this.player, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.volume_up),
          onPressed: () async {
            final volume = await player.volumeStream.first;
            if(volume == 0.0){
              player.setVolume(1);
            }else{
              player.setVolume(0);
            }
          },
        ),
        StreamBuilder<SequenceState?>(
          stream: player.sequenceStateStream,
          builder: (context, snapshot) => IconButton(
            icon: const Icon(Icons.skip_previous),
            onPressed: player.hasPrevious ? player.seekToPrevious : null,
          ),
        ),
        StreamBuilder<PlayerState>(
          stream: player.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;
            if (processingState == ProcessingState.loading ||
                processingState == ProcessingState.buffering) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                width: 64.0,
                height: 64.0,
                child: const CircularProgressIndicator(),
              );
            } else if (playing != true) {
              return IconButton(
                icon: const Icon(Icons.play_arrow),
                iconSize: 64.0,
                onPressed: player.play,
              );
            } else if (processingState != ProcessingState.completed) {
              return IconButton(
                icon: const Icon(Icons.pause),
                iconSize: 64.0,
                onPressed: player.pause,
              );
            } else {
              return IconButton(
                icon: const Icon(Icons.replay),
                iconSize: 64.0,
                onPressed: () => player.seek(Duration.zero,
                    index: player.effectiveIndices!.first),
              );
            }
          },
        ),
        StreamBuilder<SequenceState?>(
          stream: player.sequenceStateStream,
          builder: (context, snapshot) => IconButton(
            icon: const Icon(Icons.skip_next),
            onPressed: player.hasNext ? player.seekToNext : null,
          ),
        ),
        StreamBuilder<double>(
          stream: player.speedStream,
          builder: (context, snapshot) => IconButton(
            icon: Text("${snapshot.data?.toStringAsFixed(1)}x",
                style: const TextStyle(fontWeight: FontWeight.bold)),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

enum VisualizationType {
  waveform,
  waveform2,
  bars,
  fft,
  spectrum,
}
