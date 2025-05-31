part of 'detection_bloc.dart';

sealed class DetectionEvent {}

class SearchInitialized extends DetectionEvent {}

class ImageDetectEvent extends DetectionEvent {
  final XFile image;

  ImageDetectEvent(this.image);
}
