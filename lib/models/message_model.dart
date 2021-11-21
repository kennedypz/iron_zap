class MessageModel{
  final String message;
  bool didntAnswer;
  bool didntSchedule;
  bool callLater;
  bool hasCopied;
  bool scheduled;

  MessageModel({
    required this.message,
    this.didntAnswer = false,
    this.didntSchedule = false,
    this.callLater = false,
    this.hasCopied = false,
    this.scheduled = false
  });
}