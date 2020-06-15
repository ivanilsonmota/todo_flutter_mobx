import 'package:mobx/mobx.dart';
import 'package:todomobx/stores/todo_store.dart';

part 'list_store.g.dart';

class ListStore = _ListStoreBase with _$ListStore;

abstract class _ListStoreBase with Store {
  @observable
  String newToDoTitle = '';

  @action
  void setNewToDoTitle(String title) => newToDoTitle = title;

  @computed
  bool get isFormValid => newToDoTitle.isNotEmpty;

  ObservableList<TodoStore> toDoList = ObservableList<TodoStore>();

  //List<String> toDoList = List();

  @action
  void addToDo() {
    //toDoList = List.from(toDoList..add(newToDoTitle));
    //toDoList.add(TodoStore(newToDoTitle)); - Adiciona no final da lista
    toDoList.insert(0, TodoStore(newToDoTitle));
    newToDoTitle = '';
  }
}
