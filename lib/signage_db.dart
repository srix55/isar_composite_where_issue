import 'package:isar/isar.dart';
import 'package:isar_composite_where_issue/player_collection.dart';

class SignageDb {

  static Isar getIsar() {
    Isar? isar = Isar.getInstance("signageDb");
    isar ??= Isar.openSync(name: 'signageDb',
      schemas: [PlayerCollectionSchema],
      directory: '/home/rocky/isar_temp',
    );
    return isar;
  }
}