import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String id;
  final bool completed;
  final String name;

  Task({this.id, this.completed, this.name});

  @override
  List<Object> get props => [this.id, this.completed, this.name];

  static Task fromJson(Map<String, dynamic> json) {
    return Task(id: json['id'], name: json['name'], completed: json['completed']);
  }

  static List<Task> fromJsonArray(List<Map<String, dynamic>> jsonArray) {
    return jsonArray.map(fromJson).toList();
  }
}
