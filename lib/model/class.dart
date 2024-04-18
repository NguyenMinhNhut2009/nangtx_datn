class Class {
  final int id;
  final String name;
  final String teacher;
  final int sessions;
  final String schedule;
  final String imageUrl;
  final bool? attendenceStatus;
  final int? numberOfLessonsStudied;
  final String? document;

  Class(
      {required this.id,
      required this.name,
      required this.teacher,
      required this.sessions,
      required this.schedule,
      required this.imageUrl,
      this.attendenceStatus,
      this.numberOfLessonsStudied,
      this.document});
}

class ClassDetail {
  List<Class>? classDetail;
  ClassDetail({this.classDetail});
}
