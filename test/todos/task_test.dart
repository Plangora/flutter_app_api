import 'package:flutter_test/flutter_test.dart';
import '../../lib/todos/task.dart';

void main() {
  test('can parse json data into a task', () {
    final json = {'completed': true, 'name': 'Test Task', 'id': '1'};
    final task = Task.fromJson(json);
    expect(task, Task(id: '1', name: 'Test Task', completed: true));
  });

  test('can parse json array data into a list of tasks', () {
    final json = [
      {'completed': true, 'name': 'Task 1', 'id': '1'},
      {'completed': false, 'name': 'Task 2', 'id': '2'}
    ];
    final tasks = Task.fromJsonArray(json);
    expect(tasks, [
      Task(id: '1', name: 'Task 1', completed: true),
      Task(id: '2', name: 'Task 2', completed: false)
    ]);
  });
}
