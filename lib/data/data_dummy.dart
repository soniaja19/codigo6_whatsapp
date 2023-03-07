import 'package:codigo6_whatsapp/models/call_model.dart';
import 'package:codigo6_whatsapp/models/chat_model.dart';
import 'package:codigo6_whatsapp/models/message_model.dart';
import 'package:codigo6_whatsapp/models/status_model.dart';

class DataDummy {
  List<ChatModel> chats = [
    ChatModel(
      avatar:
          "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      name: "Juan Ramos Torres",
      message: "He llegado un poco tarde",
      time: "123",
      date: "1231/1222",
      isTyping: false,
      countMessage: 3,
    ),
    ChatModel(
      avatar:
          "https://images.pexels.com/photos/871495/pexels-photo-871495.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      name: "Fiorella Ramos Torres",
      message: "Hola, enviame el link de la clase",
      time: "12:40",
      date: "12/12",
      isTyping: true,
      countMessage: 0,
    ),
    ChatModel(
      avatar:
          "https://images.pexels.com/photos/1181686/pexels-photo-1181686.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      name: "Maria Montes Lopez",
      message: "Ya he enviado todos los trabajos",
      time: "11:50",
      date: "04/10",
      isTyping: false,
      countMessage: 0,
    ),
    ChatModel(
      avatar:
          "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      name: "Susana Zapata Ruiz",
      message: "Dónde estas? Por favor no tardes mucho",
      time: "07:05",
      date: "12:07",
      isTyping: true,
      countMessage: 7,
    ),
  ];

  List<MessageModel> messages = [
    MessageModel(
      message: "Hola",
      type: "other",
      time: "10:30",
    ),
    MessageModel(
      message: "Hola, Cómo estas?",
      type: "me",
      time: "10:31",
    ),
    MessageModel(
      message: "Estás estudiando Flutter?",
      type: "me",
      time: "10:32",
    ),
    MessageModel(
      message: "Si, ahora estoy practicando",
      type: "other",
      time: "10:32",
    ),
  ];

  List<StatusModel> statuses = [
    StatusModel(
      avatar:
          "https://images.pexels.com/photos/1181722/pexels-photo-1181722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      name: "Miss Ruth",
      time: "Just now",
    ),
    StatusModel(
      avatar:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOHHLJM8m43nPlRE1SpHtlWAZERsiqIQi9cw&usqp=CAU",
      name: "Donghae 💙",
      time: "12 minutes ago",
    ),
    StatusModel(
      avatar:
          "https://images.pexels.com/photos/1858175/pexels-photo-1858175.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      name: "Shoni 😘",
      time: "25 minutes ago",
    ),
    StatusModel(
      avatar:
          "https://images.pexels.com/photos/12317572/pexels-photo-12317572.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      name: "BFF💖",
      time: "39 minutes ago",
    ),
    StatusModel(
      avatar:
          "https://images.pexels.com/photos/4473314/pexels-photo-4473314.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      name: "Mom",
      time: "44 minutes ago",
    ),
  ];

  List<CallModel> calls = [
    CallModel(
      avatar:
          "https://images.pexels.com/photos/1181722/pexels-photo-1181722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      name: "Miss Ruth",
      time: "Just now",
      isCall: true,
      isIncomingCall: false,
    ),
    CallModel(
      avatar:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOHHLJM8m43nPlRE1SpHtlWAZERsiqIQi9cw&usqp=CAU",
      name: "Donghae 💙",
      time: "February 14, 23:08",
      isCall: true,
      isIncomingCall: true,
    ),
    CallModel(
      avatar:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOHHLJM8m43nPlRE1SpHtlWAZERsiqIQi9cw&usqp=CAU",
      name: "Donghae 💙",
      time: "February 14, 21:21",
      isCall: false,
      isIncomingCall: true,
    ),
    CallModel(
      avatar:
          "https://images.pexels.com/photos/12317572/pexels-photo-12317572.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      name: "BFF💖",
      time: "February 13, 14:43",
      isCall: true,
      isIncomingCall: false,
    ),
    CallModel(
      avatar:
          "https://images.pexels.com/photos/1858175/pexels-photo-1858175.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      name: "Shoni 😘",
      time: "February 12, 17:30",
      isCall: false,
      isIncomingCall: false,
    ),
  ];
}
