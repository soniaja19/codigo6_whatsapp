class CallModel {
  String avatar;
  String name;
  String time;
  bool isCall;
  bool isIncomingCall;

  CallModel({
    required this.avatar,
    required this.name,
    required this.time,
    this.isCall = false,
    this.isIncomingCall = false,
  });
}
