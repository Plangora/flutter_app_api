import 'package:flutter_test/flutter_test.dart';
import 'package:flutterappapi/todos/task.dart';
import 'package:flutterappapi/todos/task_repository.dart';
import 'package:graphql/client.dart';
import 'package:mockito/mockito.dart';

class MockGraphQLClient extends Mock implements GraphQLClient {}

void main() {
  GraphQLClient mockClient = MockGraphQLClient();
  TaskRepository taskRepository = TaskRepository(mockClient);
//  test('can get tasks from api', () async {
//    final data = {
//      'allTasks': [
//        {'completed': true, 'name': 'Task 1', 'id': '1'},
//        {'completed': false, 'name': 'Task 2', 'id': '2'}
//      ]
//    };
//    when(mockClient.query(any))
//        .thenAnswer((_) => Future.value(QueryResult(data: data)));
//    final expectedTasks = [
//      Task(id: '1', name: 'Task 1', completed: true),
//      Task(id: '2', name: 'Task 2', completed: false)
//    ];
//    final tasks = await taskRepository.getAllTasks();
//    expect(tasks, expectedTasks);
//  });
//
//  test('can get 1 task from api using the ID', () async {
//    final data = {
//      'getTask': {'completed': true, 'name': 'Task 1', 'id': '1'}
//    };
//    when(mockClient.query(any))
//        .thenAnswer((_) => Future.value(QueryResult(data: data)));
//    final expectedTask = Task(id: '1', name: 'Task 1', completed: true);
//    final task = await taskRepository.getTask('1');
//    expect(task, expectedTask);
//  });
}
