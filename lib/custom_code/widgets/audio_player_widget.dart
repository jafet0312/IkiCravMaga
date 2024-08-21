// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:audio_session/audio_session.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

class AudioPlayerWidget extends StatefulWidget {
  const AudioPlayerWidget({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<AudioPlayerWidget> createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget>
    with WidgetsBindingObserver {
  final _player = AudioPlayer();
  bool _dragging = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _init();
  }

  Future<void> _init() async {
    try {
      final session = await AudioSession.instance;
      await session.configure(const AudioSessionConfiguration.speech());
      _player.playbackEventStream.listen(
        (event) {},
        onError: (Object e, StackTrace stackTrace) {
          print('A stream error occurred: $e');
        },
      );
      await _player.setAudioSource(
        AudioSource.uri(Uri.parse(
            "https://firebasestorage.googleapis.com/v0/b/ikikravmaga-37686.appspot.com/o/Documental%20de%20Krav%20Maga.mp3?alt=media&token=0b69172b-aff7-44be-b88c-85cd4cf7e5c4")),
      );
    } on PlayerException catch (e) {
      print("Error loading audio source: $e");
    } catch (e) {
      print("An unexpected error occurred: $e");
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _player.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _player.pause();
    }
  }

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
        _player.positionStream,
        _player.bufferedPositionStream,
        _player.durationStream,
        (position, bufferedPosition, duration) =>
            PositionData(position, bufferedPosition, duration ?? Duration.zero),
      );

  void _onSeekChanged(Duration position) {
    if (!_dragging) {
      _player.seek(position);
    }
  }

  void _onSeekDragStart(Duration position) {
    _dragging = true;
  }

  void _onSeekDragEnd(Duration position) {
    _dragging = false;
    _player.seek(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFF17171A), // Establece el fondo en #17171A
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ControlButtons(_player,
                  iconColor: Colors.white), // Pasa el color de los iconos
              StreamBuilder<PositionData>(
                stream: _positionDataStream,
                builder: (context, snapshot) {
                  final positionData = snapshot.data;
                  return SeekBar(
                    duration: positionData?.duration ?? Duration.zero,
                    position: positionData?.position ?? Duration.zero,
                    bufferedPosition:
                        positionData?.bufferedPosition ?? Duration.zero,
                    onChangeStart: _onSeekDragStart,
                    onChanged: _onSeekChanged,
                    onChangeEnd: _onSeekDragEnd,
                    thumbColor: Colors
                        .white, // Establece el color del thumb del deslizador
                    activeTrackColor:
                        Colors.blue, // Establece el color del track activo
                    inactiveTrackColor: Colors
                        .grey.shade300, // Establece el color del track inactivo
                    textStyle: const TextStyle(
                      color: Colors.white, // Establece el color del texto
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ControlButtons extends StatelessWidget {
  final AudioPlayer player;
  final Color? iconColor;

  const ControlButtons(this.player, {Key? key, this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(Icons.volume_up, color: iconColor),
          onPressed: () {
            showSliderDialog(
              context: context,
              title: "Ajustar Volumen",
              divisions: 10,
              min: 0.0,
              max: 1.0,
              valueSuffix: '',
              value: player.volume,
              stream: player.volumeStream,
              onChanged: player.setVolume,
            );
          },
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
                icon: Icon(Icons.play_arrow, color: iconColor),
                iconSize: 64.0,
                onPressed: player.play,
              );
            } else if (processingState != ProcessingState.completed) {
              return IconButton(
                icon: Icon(Icons.pause, color: iconColor),
                iconSize: 64.0,
                onPressed: player.pause,
              );
            } else {
              return IconButton(
                icon: Icon(Icons.replay, color: iconColor),
                iconSize: 64.0,
                onPressed: () => player.seek(Duration.zero),
              );
            }
          },
        ),
        StreamBuilder<double>(
          stream: player.speedStream,
          builder: (context, snapshot) => IconButton(
            icon: Text(
              "${snapshot.data?.toStringAsFixed(1)}x",
              style: TextStyle(fontWeight: FontWeight.bold, color: iconColor),
            ),
            onPressed: () {
              showSliderDialog(
                context: context,
                title: "Ajustar Velocidad",
                divisions: 10,
                min: 0.5,
                max: 1.5,
                valueSuffix: 'x',
                value: player.speed,
                stream: player.speedStream,
                onChanged: player.setSpeed,
              );
            },
          ),
        ),
      ],
    );
  }
}

class SeekBar extends StatefulWidget {
  final Duration duration;
  final Duration position;
  final Duration bufferedPosition;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeStart;
  final ValueChanged<Duration>? onChangeEnd;
  final Color? thumbColor;
  final Color? activeTrackColor;
  final Color? inactiveTrackColor;
  final TextStyle? textStyle;

  const SeekBar({
    Key? key,
    required this.duration,
    required this.position,
    required this.bufferedPosition,
    this.onChanged,
    this.onChangeStart,
    this.onChangeEnd,
    this.thumbColor,
    this.activeTrackColor,
    this.inactiveTrackColor,
    this.textStyle,
  }) : super(key: key);

  @override
  SeekBarState createState() => SeekBarState();
}

class SeekBarState extends State<SeekBar> {
  double? _dragValue;
  late SliderThemeData _sliderThemeData;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _sliderThemeData = SliderTheme.of(context).copyWith(
      trackHeight: 2.0,
      thumbColor: widget.thumbColor ?? Colors.white,
      activeTrackColor: widget.activeTrackColor ?? Colors.blue,
      inactiveTrackColor: widget.inactiveTrackColor ?? Colors.grey.shade300,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SliderTheme(
          data: _sliderThemeData,
          child: Slider(
            min: 0.0,
            max: widget.duration.inMilliseconds.toDouble(),
            value: _dragValue ?? widget.position.inMilliseconds.toDouble(),
            onChanged: (value) {
              setState(() {
                _dragValue = value;
              });
              if (widget.onChanged != null) {
                widget.onChanged!(Duration(milliseconds: value.round()));
              }
            },
            onChangeStart: (_) {
              if (widget.onChangeStart != null) {
                widget.onChangeStart!(widget.position);
              }
            },
            onChangeEnd: (value) {
              if (widget.onChangeEnd != null) {
                widget.onChangeEnd!(Duration(milliseconds: value.round()));
              }
              _dragValue = null;
            },
          ),
        ),
        Positioned(
          right: 16.0,
          bottom: 0.0,
          child: Text(
            _formatDuration(widget.duration - widget.position),
            style: widget.textStyle ?? Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}

class PositionData {
  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;

  PositionData(this.position, this.bufferedPosition, this.duration);
}

void showSliderDialog({
  required BuildContext context,
  required String title,
  required int divisions,
  required double min,
  required double max,
  String valueSuffix = '',
  required double value,
  required Stream<double> stream,
  required ValueChanged<double> onChanged,
}) {
  showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title, textAlign: TextAlign.center),
      content: StreamBuilder<double>(
        stream: stream,
        builder: (context, snapshot) => SizedBox(
          height: 100.0,
          child: Column(
            children: [
              Text(
                '${snapshot.data?.toStringAsFixed(1) ?? value.toStringAsFixed(1)}$valueSuffix',
                style: const TextStyle(
                  fontFamily: 'Fixed',
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Slider(
                divisions: divisions,
                min: min,
                max: max,
                value: snapshot.data ?? value,
                onChanged: onChanged,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
