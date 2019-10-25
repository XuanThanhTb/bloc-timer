import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TimerEvent extends Equatable {
  const TimerEvent();
  @override
  List<Object> get props => [];
}

class Start extends TimerEvent {
  final int duration;
  const Start({@required this.duration});

  @override
  String toString() => 'Start { duration: $duration }';
}

class Pause extends TimerEvent {
  final int duration;
  const Pause({@required this.duration});

  @override
  String toString() => 'Pause { duration: $duration }';
}

class Resume extends TimerEvent {
  final int duration;
  const Resume({@required this.duration});

  @override
  String toString() => 'Resume { duration: $duration }';
}

class Reset extends TimerEvent {
  final int duration;
  const Reset({@required this.duration});

  @override
  String toString() => 'Reset { duration: $duration }';
}

class Tick extends TimerEvent {
  final int duration;
  const Tick({@required this.duration});
  @override
  List<Object> get props => [duration];
  @override
  String toString() => "Tick { duration: $duration }";
}
