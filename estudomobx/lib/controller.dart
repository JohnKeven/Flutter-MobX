import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;
//O uso do mixin Store é para geração de códigos automáticos

abstract class ControllerBase with Store {
  
  ControllerBase(){
    //Executa sempre que um observável tem seu estado alterado
    autorun((_) {
      print(email);
      print(senha);
      }
    );
  }

  @observable
  String email = '';
  @observable
  String senha = '';

  @action
  void setEmail(valorEmail) => email = valorEmail;

  @action
  void setSenha(valorSenha) => senha = valorSenha;

  @computed
  String get emailSenha => '$email - $senha';

  @computed
  bool get formularioValidado => email.length >= 5 && senha.length >=5;


  // var _contador = Observable(0);
  // Action? incrementar;
  //
  // Controller(){
  //   incrementar = Action(_add);
  // }
  //
  // _add(){
  //   contador++;
  // }
  //
  // int get contador =>  _contador.value;
  // set contador(int novoValor) => _contador.value = novoValor;

}