import 'package:equatable/equatable.dart';
import 'package:flutter/semantics.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TimerState extends Equatable {
  final int duration;
  const TimerState(this.duration);
  @override
  List<Object> get props => [duration];
}

class Ready extends TimerState {
  const Ready(int duration) : super(duration);
  @override
  String toString() => 'Ready {duration: $duration}';
}

class Paused extends TimerState {
  const Paused(int duration) : super(duration);
  @override
  String toString() => 'Pause: { duration: $duration}';
}

class Running extends TimerState {
  const Running(int duration) : super(duration);
  @override
  String toString() => 'Running: { duration: $duration}';
}

class Finished extends TimerState {
  const Finished(int duration) : super(0);
}
