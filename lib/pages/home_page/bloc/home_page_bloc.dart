import 'package:bloc/bloc.dart';
import 'package:whatsapp_julia/models/message_model.dart';
import 'package:whatsapp_julia/pages/home_page/bloc/home_page_event.dart';
import 'package:whatsapp_julia/pages/home_page/bloc/home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState>{
  HomePageBloc() : super(HomePageEmptyState()){
    on<BuildMessagesEvent>((event, emit) => _buildMessagesEvent(event, emit));
    on<MarkAsCopied>((event, emit) => _markAsCopied(event, emit));
    on<MarkAsDidntAnswer>((event, emit) => _markAsDidntAnswer(event, emit));
    on<MarkAsDidntSchedule>((event, emit) => _markasDidntSchedule(event, emit));
    on<MarkAsCallLater>((event, emit) => _markAsCallLater(event, emit));
    on<MarkAsScheduled>((event, emit) => _markAsScheduled(event, emit));
  }

  void _markAsScheduled(MarkAsScheduled event, Emitter<HomePageState> emit){
    state.messages![event.index].scheduled = !state.messages![event.index].scheduled;

    int scheduled =  state.scheduled!;

    if(state.messages![event.index].scheduled){
      scheduled++;
    } else{
      scheduled--;
    }

    emit(state.copyWith(scheduled: scheduled));
  }

  void _markAsCallLater(MarkAsCallLater event, Emitter<HomePageState> emit){
    state.messages![event.index].callLater = !state.messages![event.index].callLater;

    int callLater =  state.callLater!;

    if(state.messages![event.index].callLater){
      callLater++;
    } else{
      callLater--;
    }

    emit(state.copyWith(callLater: callLater));
  }

  void _markasDidntSchedule(MarkAsDidntSchedule event, Emitter<HomePageState> emit){
    state.messages![event.index].didntSchedule = !state.messages![event.index].didntSchedule;
    int didntSchedule =  state.didntSchedule!;
    
    if(state.messages![event.index].didntSchedule){
      didntSchedule++;
    } else{
      didntSchedule--;
    }

    emit(state.copyWith(didntSchedule: didntSchedule));
  }

  void _markAsDidntAnswer(MarkAsDidntAnswer event, Emitter<HomePageState> emit){
    state.messages![event.index].didntAnswer = !state.messages![event.index].didntAnswer;

    int didntAnswer =  state.didntAnswer!;
    
    if(state.messages![event.index].didntAnswer){
      didntAnswer++;
    } else{
      didntAnswer--;
    }

    emit(state.copyWith(didntAnswer: didntAnswer));
  }

  void _buildMessagesEvent(BuildMessagesEvent event, Emitter<HomePageState> emit){
    emit(HomePageLoadingState(
      callLater: state.callLater,
      called: state.called,
      didntAnswer: state.didntAnswer,
      didntSchedule: state.didntSchedule,
      scheduled: state.scheduled
    ));

    if(event.patients[event.patients.length-1] == ";"){
      event.patients = event.patients.replaceRange(event.patients.length-2, event.patients.length, "");
    }

    final List<String> splittedPatients = event.patients.split(";");

    String message;
    List<MessageModel> messages = [];
    for(int i = 0; i < splittedPatients.length; i++){
      message = "Olá, ${_setGreeting()}.\nMe chamo Júlia, falo da TELEMEDICINA da CASSI, seu plano de saúde.\nFalo com ${_formatName(splittedPatients[i].trim())}?\nMeu contato é para saber da sua saúde, está tudo bem?";
      messages.add(MessageModel(message: message));
    }
    
    emit(
      HomePageState(
        messages: messages,
        called: (state.called! + messages.length),
        callLater: state.callLater,
        didntAnswer: state.didntAnswer,
        didntSchedule: state.didntSchedule,
        scheduled: state.scheduled
      )
    );
  }

  void _markAsCopied(MarkAsCopied event, Emitter<HomePageState> emit){
    if(!state.messages![event.index].hasCopied){
      state.messages![event.index].hasCopied = true;
      emit(state.copyWith(messages: state.messages));
    }
  }

  String _setGreeting(){
    final DateTime data = DateTime.now();
    final int hour = data.hour;

    if(hour > 6 && hour < 12){
      return "bom dia";
    } else if(hour >= 12 && hour < 18){
      return "boa tarde";
    } else{
      return "boa noite";
    }
  }
  
  String _formatName(String name){
    List<String> splittedName = name.split(" ");
    
    for(int i = 0; i < splittedName.length; i++){
      splittedName[i] = splittedName[i][0] + splittedName[i].substring(1).toLowerCase();
    }
    
    return splittedName.join(" ");
  }
}