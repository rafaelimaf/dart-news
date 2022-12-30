class News {
  final int? id;
  final String title;
  final String description;
  final String image;
  final DateTime sendTime;
  final DateTime? updatedTime; 

  News(
    this.id,
    this.title,
    this.description,
    this.image,
    this.sendTime,
    this.updatedTime
  );
}