import 'package:mobx/mobx.dart';

part 'cadastro_store.g.dart';

class CadastroStore = _CadastroStore with _$CadastroStore;

abstract class _CadastroStore with Store {
  @observable
  String fullName = '';

  @observable
  String email = '';

  String get getFullName => fullName;

  String get getEmail => email;

  set setfullName(String val) => fullName = val;

  set setEmail(String val) => email = val;

  @computed
  void get clientData => "$getFullName - $getEmail";
}
