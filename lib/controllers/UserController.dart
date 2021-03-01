//importa o modelo do meu usuario
import 'package:dart_api/models/UserModel.dart';
import 'package:dart_api/dart_api.dart';

//ResourceController - classe padrão que lida com http requests
class UserController extends ResourceController {
  //construtor
  UserController() {
    acceptedContentTypes = [ContentType.json];
  }

  //dados Estáticos para teste
  final List<UserModel> users = [
    UserModel()
      ..id = 1
      ..nome = 'José'
      ..idade = 11,
    UserModel()
      ..id = 2
      ..nome = 'Eugênio'
      ..idade = 22,
    UserModel()
      ..id = 3
      ..nome = 'Santos'
      ..idade = 33,
    UserModel()
      ..id = 4
      ..nome = 'Skynet'
      ..idade = 44,
  ];

  //rota GET
  @Operation.get()
  Future<Response> getAllUsers() async {
    return Response.ok(users);
  }
}
