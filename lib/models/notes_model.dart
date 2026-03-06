class Note{
  int? id;
  String title;
  String content;
  String date;

  Note({
    this.id,
    required this.title,
    required this.content,
    required this.date
  });

  Map<String,dynamic> toMap(){
    return{
      'id': id,
      'title': title,
      'content': content,
      'date': date,
    };
  }
  factory Note.fromMap(Map<String,dynamic> res)
   {
     return Note(
       id: res['id'],
       title: res['title'],
       content: res['content'],
       date: res['date']
     );
   }



}
