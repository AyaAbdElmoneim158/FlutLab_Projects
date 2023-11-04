import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/07.ToDo/cubit/todo_states.dart';
import 'package:flutter_projects/07.ToDo/data.dart';
import 'package:flutter_projects/07.ToDo/todo_model.dart';

class AuthCubit extends Cubit<TodoState> {
  AuthCubit() : super(TodoInit());
  final ITodoService service = TodoService();

  Future<void> addTodo(TodoModel todo) async {
    emit(TodoLoading());
    service.addTodo(todo).then(
      (value) async {
        await service.addTodo(todo);
        emit(TodoSuccess());
      },
    ).catchError((err) => emit(TodoError(errorMsg: err.toString())));
  }

  Future<void> deleteTodo(String todoId) async {
    try {
      emit(TodoLoading());
      await service.deleteTodo(todoId);
      emit(TodoSuccess());
    } catch (e) {
      emit(TodoError(errorMsg: e.toString()));
    }
  }

  Future<void> editTodo(TodoModel todo) async {
    try {
      emit(TodoLoading());
      await service.editTodo(todo);
      emit(TodoSuccess());
    } catch (e) {
      emit(TodoError(errorMsg: e.toString()));
    }
  }

  Stream<List<TodoModel>> getAllTodo() => service.getAllTodo();
}
