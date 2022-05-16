@Tags(['unit'])
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:isar_composite_where_issue/player_collection.dart';
import 'package:isar_composite_where_issue/signage_db.dart';

void main() {
  late Isar isar;

  setUpAll(() {
    isar = SignageDb.getIsar();
    var p1 = PlayerCollection(isarId: 990, playerId: '200', playerName: 'Manuel Neuer', city: 'Munich');
    var p2 = PlayerCollection(isarId: 991, playerId: '200', playerName: 'Bernd Leno', city: 'Munich');
    var p3 = PlayerCollection(isarId: 992, playerId: '202', playerName: 'Kevin Trapp', city: 'Frankfurt');
    isar.writeTxnSync((isar) => isar.playerCollections.putAllSync([p1, p2, p3], replaceOnConflict: true));
  });

  test('getting records with filter', () {
    var storedListWithFilter = isar.playerCollections.filter().playerIdEqualTo('200').and().cityEqualTo('Munich').findAllSync();
    expect(storedListWithFilter.isNotEmpty, true);
    expect(storedListWithFilter.length, 2);
  });

  test('getting records with single composite-index property', () {
    var storedListWithSingleWhere = isar.playerCollections.where().playerIdEqualTo('200').findAllSync();
    expect(storedListWithSingleWhere.isNotEmpty, true);
    expect(storedListWithSingleWhere.length, 2);
  });

  test('getting records with two composite-indexes', () {
    var storedListWithWhere = isar.playerCollections.where().playerIdCityEqualTo('200', 'Munich').findAllSync();
    expect(storedListWithWhere.isNotEmpty, true);
    expect(storedListWithWhere.length, 2);
  });

  test('getting records with three composite-indexes', () {
    var storedListWithWhere = isar.playerCollections.where().playerIdCityPlayerNameEqualTo('200', 'Munich', 'Manuel Neuer').findAllSync();
    expect(storedListWithWhere.isNotEmpty, true);
    expect(storedListWithWhere.length, 1);
  });
}