import 'package:graphql/client.dart';

import 'task.dart';

const String GET_ALL_TASKS_QUERY = r"""
query {
  allTasks {
    id
    name
    completed
  }
}
""";

const String GET_TASK_QUERY = r"""
query($id: ID!) {
  getTask(id: $id) {
    id
    name
    completed
  }
}
""";

class TaskRepository {
  final GraphQLClient _client;

  TaskRepository(this._client);

  Future<List<Task>> getAllTasks() async {
    final queryResults = await this._client.query(QueryOptions(documentNode: gql(GET_ALL_TASKS_QUERY)));
    return Task.fromJsonArray(List<Map<String, dynamic>>.from(queryResults.data['allTasks']));
  }

  Future<Task> getTask(String id) async {
    final queryResults = await this._client.query(QueryOptions(documentNode: gql(GET_TASK_QUERY), variables: {'id': id}));
    return Task.fromJson(queryResults.data['getTask']);
  }
}
