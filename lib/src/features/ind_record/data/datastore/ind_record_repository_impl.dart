import 'package:alindor_brainai/src/features/ind_record/domain/ind_record_datastore.dart';
import 'package:alindor_brainai/src/features/ind_record/domain/ind_record_repository.dart';

class IndRecordRepositoryImp implements IndRecordRepository{
  final IndRecordDataStore  dataStore;

  IndRecordRepositoryImp(this.dataStore);

  @override
  Future<String> speechToText(String filePath) {
    return dataStore.speechToText(filePath);
  }

}