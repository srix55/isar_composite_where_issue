import 'package:isar/isar.dart';

part 'player_collection.g.dart';

@Collection()
@Name("Player")
class PlayerCollection {
  @Id()
  @Name("isarId")
  int? isarId;

  @Name("playerName")
  String playerName;

  @Name("playerId")
  @Index(type: IndexType.hash, unique: true, composite: [CompositeIndex('city'), CompositeIndex('playerName')])
  String playerId;

  @Name("city")
  String city;

  PlayerCollection(
      {required this.isarId,
      required this.playerId,
      required this.playerName,
      required this.city});
}