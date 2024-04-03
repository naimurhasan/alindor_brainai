import 'package:alindor_brainai/src/core/network/http_client.dart';
import 'package:alindor_brainai/src/features/auth/data/datastore/user_remote_datastore_impl.dart';
import 'package:alindor_brainai/src/features/auth/data/datastore/user_repository_impl.dart';
import 'package:alindor_brainai/src/features/auth/domain/user_repository.dart';
import 'package:alindor_brainai/src/features/ind_record/data/datastore/ind_record_datstore_impl.dart';
import 'package:alindor_brainai/src/features/ind_record/data/datastore/ind_record_repository_impl.dart';
import 'package:alindor_brainai/src/features/ind_record/domain/ind_record_datastore.dart';
import 'package:alindor_brainai/src/features/ind_record/domain/ind_record_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GetIt di = GetIt.instance;

Future<void> initDI() async {
  di.registerSingleton<BaseHttpClient>(BaseHttpClient());

  di.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(
      userRemoteDatastore: UserRemoteDataStoreImpl(
        firebaseAuth: FirebaseAuth.instance,
        googleSignIn: GoogleSignIn(),
      ),
    ),
  );

  di.registerLazySingleton<IndRecordDataStore>(
    () => IndRecordDataStoreImpl(di.get<BaseHttpClient>()),
  );

  di.registerLazySingleton<IndRecordRepository>(
    () => IndRecordRepositoryImp(di.get<IndRecordDataStore>()),
  );
}
