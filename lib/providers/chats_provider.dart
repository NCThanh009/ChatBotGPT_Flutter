import 'package:flutter/cupertino.dart';
import 'package:flutter_application_chatgpt/models/chat_model.dart';
import 'package:flutter_application_chatgpt/services/api_services.dart';

class ChatProvider with ChangeNotifier {
  List<ChatModel> chatList = [];
  List<ChatModel> get getChatList {
    return chatList;
  }

  void addUserMessage({required String msg}) {
    chatList.add(
      ChatModel(msg: msg, chatIndex: 0),
    );
    notifyListeners();
  }

  Future<void> sendMessAndGetAnswer(
      {required String msg, required String chosenModelId}) async {
    chatList.addAll(
      await ApiService.sendMessage(message: msg, modelId: chosenModelId),
    );
    notifyListeners();
  }
}
