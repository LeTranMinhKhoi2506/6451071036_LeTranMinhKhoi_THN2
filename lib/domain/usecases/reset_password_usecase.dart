import 'package:dartz/dartz.dart';
import '../repositories/auth_repository.dart';

class ResetPasswordUseCase {
  final AuthRepository repository;

  ResetPasswordUseCase(this.repository);

  Future<Either<String, Unit>> call(String email) {
    return repository.resetPassword(email);
  }
}
