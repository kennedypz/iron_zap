import 'package:whatsapp_julia/models/message_model.dart';

class HomePageState{
  List<MessageModel>? messages;
  int? called;
  int? didntSchedule;
  int? didntAnswer;
  int? callLater;
  int? scheduled;

  HomePageState({
    this.messages,
    this.callLater = 0,
    this.called = 0,
    this.didntAnswer = 0,
    this.didntSchedule = 0,
    this.scheduled = 0,
  });

  HomePageState copyWith({
    List<MessageModel>? messages,
    int? called,
    int? didntSchedule,
    int? didntAnswer,
    int? callLater,
    int? scheduled,
  }){
    return HomePageState(
      messages: messages ?? this.messages,
      callLater: callLater ?? this.callLater,
      called: called ?? this.called,
      didntAnswer: didntAnswer ?? this.didntAnswer,
      didntSchedule: didntSchedule ?? this.didntSchedule,
      scheduled: scheduled ?? this.scheduled
    );
  }
}

class HomePageEmptyState extends HomePageState{}

class HomePageLoadingState extends HomePageState{
  HomePageLoadingState({
    int? called,
    int? didntSchedule,
    int? didntAnswer,
    int? callLater,
    int? scheduled,
  }) : super(
    callLater: callLater,
    called: called,
    didntAnswer: didntAnswer,
    didntSchedule: didntSchedule,
    scheduled: scheduled
  );
}