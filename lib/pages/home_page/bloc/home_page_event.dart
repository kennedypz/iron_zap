class HomePageEvent{}

class BuildMessagesEvent extends HomePageEvent{
  String patients;

  BuildMessagesEvent({required this.patients});
}

class MarkAsCopied extends HomePageEvent{
  final int index;

  MarkAsCopied({required this.index});
}

class MarkAsDidntAnswer extends HomePageEvent{
  final int index;

  MarkAsDidntAnswer({required this.index});
}

class MarkAsDidntSchedule extends HomePageEvent{
  final int index;

  MarkAsDidntSchedule({required this.index});
}

class MarkAsCallLater extends HomePageEvent{
  final int index;

  MarkAsCallLater({required this.index});
}

class MarkAsScheduled extends HomePageEvent{
  final int index;

  MarkAsScheduled({required this.index});
}