import 'package:flutterproducts/features/authentication/domain/entities/user_entity.dart';
import 'package:flutterproducts/features/authentication/domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase({required this.repository});

  Future<UserEntity> call(String email, String password) {
    return repository.login(email, password);
  }
}
