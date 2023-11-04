import 'package:flutter_projects/07.ToDo/constance.dart';
import 'package:flutter_projects/07.ToDo/todo_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class ITodoService {
  Future<void> addTodo(TodoModel todo);
  Future<void> editTodo(TodoModel todo);
  Future<void> deleteTodo(String todoId);
  Stream<List<TodoModel>> getAllTodo();
}

class TodoService implements ITodoService {
  final fireStore = FirebaseFirestore.instance;

  @override
  Future<void> addTodo(TodoModel todo) async => await fireStore
      .collection(todoCollection)
      .doc(todo.id)
      .set(todo.toJson());

  @override
  Future<void> deleteTodo(String todoId) async =>
      await fireStore.collection(todoCollection).doc(todoId).delete();

  @override
  Future<void> editTodo(TodoModel todo) async => await fireStore
      .collection(todoCollection)
      .doc(todo.id)
      .update(todo.toJson());

  @override
  Stream<List<TodoModel>> getAllTodo() =>
      fireStore.collection(todoCollection).snapshots().map((snapshots) =>
          snapshots.docs.map((doc) => TodoModel.fromJson(doc.data())).toList());
}
