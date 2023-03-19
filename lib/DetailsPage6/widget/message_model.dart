class MessageModel{
  final String name;
  final String date;
  final String message;
  
  MessageModel({
    required this.name,
    required this.message,
    required this.date,
});
}

List <MessageModel> messageDetails=[
  MessageModel(name: "Mohamed Tarik", message: "فني ممتاز جدا تسلم بجد", date: "23/2/2022"),
  MessageModel(name: "Abdo Hassan", message: "شغل فاخر من الاخر", date: "1/5/2022"),
  MessageModel(name: "Ammar", message: "غير منضم في المواعيد", date: "13/8/2022"),
  MessageModel(name: "Benzo", message: "الله ينور عليك", date: "23/2/2022"),
  MessageModel(name: "Shaker", message: "شغل زي القرف", date: "1/1/2023"),
];