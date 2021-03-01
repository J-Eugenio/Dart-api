import 'package:aqueduct/aqueduct.dart';

//extende de Serializable para poder lidar com respostas JSON
class UserModel extends Serializable {
  int id;
  String nome;
  int idade;

  @override
  Map<String, dynamic> asMap() {
    return {"id": id, "nome": nome, "idade": idade};
  }

  void readFromMap(Map<String, dynamic> object) {
    id = object['id'] as int;
    nome = object['nome'] as String;
    idade = object['idade'] as int;
  }
}
