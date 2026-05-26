import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<String, UserEntity>> signIn(String email, String password) async {
    try {
      final userCredential = await remoteDataSource.signIn(email, password);
      final user = userCredential.user!;
      return Right(UserEntity(uid: user.uid, email: user.email!));
    } on FirebaseAuthException catch (e) {
      return Left(e.message ?? "An error occurred during sign in");
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, UserEntity>> signUp(String email, String password) async {
    try {
      final userCredential = await remoteDataSource.signUp(email, password);
      final user = userCredential.user!;
      return Right(UserEntity(uid: user.uid, email: user.email!));
    } on FirebaseAuthException catch (e) {
      return Left(e.message ?? "An error occurred during sign up");
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, Unit>> resetPassword(String email) async {
    try {
      await remoteDataSource.sendPasswordResetEmail(email);
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      return Left(e.message ?? "An error occurred during password reset");
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    await remoteDataSource.signOut();
  }
}
