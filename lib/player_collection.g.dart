// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetPlayerCollectionCollection on Isar {
  IsarCollection<PlayerCollection> get playerCollections => getCollection();
}

const PlayerCollectionSchema = CollectionSchema(
  name: 'Player',
  schema:
      '{"name":"Player","idName":"isarId","properties":[{"name":"city","type":"String"},{"name":"playerId","type":"String"},{"name":"playerName","type":"String"}],"indexes":[{"name":"playerId_city_playerName","unique":true,"properties":[{"name":"playerId","type":"Hash","caseSensitive":true},{"name":"city","type":"Hash","caseSensitive":true},{"name":"playerName","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: 'isarId',
  propertyIds: {'city': 0, 'playerId': 1, 'playerName': 2},
  listProperties: {},
  indexIds: {'playerId_city_playerName': 0},
  indexValueTypes: {
    'playerId_city_playerName': [
      IndexValueType.stringHash,
      IndexValueType.stringHash,
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _playerCollectionGetId,
  setId: _playerCollectionSetId,
  getLinks: _playerCollectionGetLinks,
  attachLinks: _playerCollectionAttachLinks,
  serializeNative: _playerCollectionSerializeNative,
  deserializeNative: _playerCollectionDeserializeNative,
  deserializePropNative: _playerCollectionDeserializePropNative,
  serializeWeb: _playerCollectionSerializeWeb,
  deserializeWeb: _playerCollectionDeserializeWeb,
  deserializePropWeb: _playerCollectionDeserializePropWeb,
  version: 3,
);

int? _playerCollectionGetId(PlayerCollection object) {
  if (object.isarId == Isar.autoIncrement) {
    return null;
  } else {
    return object.isarId;
  }
}

void _playerCollectionSetId(PlayerCollection object, int id) {
  object.isarId = id;
}

List<IsarLinkBase> _playerCollectionGetLinks(PlayerCollection object) {
  return [];
}

void _playerCollectionSerializeNative(
    IsarCollection<PlayerCollection> collection,
    IsarRawObject rawObj,
    PlayerCollection object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.city;
  final _city = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_city.length) as int;
  final value1 = object.playerId;
  final _playerId = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_playerId.length) as int;
  final value2 = object.playerName;
  final _playerName = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_playerName.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _city);
  writer.writeBytes(offsets[1], _playerId);
  writer.writeBytes(offsets[2], _playerName);
}

PlayerCollection _playerCollectionDeserializeNative(
    IsarCollection<PlayerCollection> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = PlayerCollection(
    city: reader.readString(offsets[0]),
    isarId: id,
    playerId: reader.readString(offsets[1]),
    playerName: reader.readString(offsets[2]),
  );
  return object;
}

P _playerCollectionDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _playerCollectionSerializeWeb(
    IsarCollection<PlayerCollection> collection, PlayerCollection object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'city', object.city);
  IsarNative.jsObjectSet(jsObj, 'isarId', object.isarId);
  IsarNative.jsObjectSet(jsObj, 'playerId', object.playerId);
  IsarNative.jsObjectSet(jsObj, 'playerName', object.playerName);
  return jsObj;
}

PlayerCollection _playerCollectionDeserializeWeb(
    IsarCollection<PlayerCollection> collection, dynamic jsObj) {
  final object = PlayerCollection(
    city: IsarNative.jsObjectGet(jsObj, 'city') ?? '',
    isarId: IsarNative.jsObjectGet(jsObj, 'isarId'),
    playerId: IsarNative.jsObjectGet(jsObj, 'playerId') ?? '',
    playerName: IsarNative.jsObjectGet(jsObj, 'playerName') ?? '',
  );
  return object;
}

P _playerCollectionDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'city':
      return (IsarNative.jsObjectGet(jsObj, 'city') ?? '') as P;
    case 'isarId':
      return (IsarNative.jsObjectGet(jsObj, 'isarId')) as P;
    case 'playerId':
      return (IsarNative.jsObjectGet(jsObj, 'playerId') ?? '') as P;
    case 'playerName':
      return (IsarNative.jsObjectGet(jsObj, 'playerName') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _playerCollectionAttachLinks(
    IsarCollection col, int id, PlayerCollection object) {}

extension PlayerCollectionByIndex on IsarCollection<PlayerCollection> {
  Future<PlayerCollection?> getByPlayerIdCityPlayerName(
      String playerId, String city, String playerName) {
    return getByIndex('playerId_city_playerName', [playerId, city, playerName]);
  }

  PlayerCollection? getByPlayerIdCityPlayerNameSync(
      String playerId, String city, String playerName) {
    return getByIndexSync(
        'playerId_city_playerName', [playerId, city, playerName]);
  }

  Future<bool> deleteByPlayerIdCityPlayerName(
      String playerId, String city, String playerName) {
    return deleteByIndex(
        'playerId_city_playerName', [playerId, city, playerName]);
  }

  bool deleteByPlayerIdCityPlayerNameSync(
      String playerId, String city, String playerName) {
    return deleteByIndexSync(
        'playerId_city_playerName', [playerId, city, playerName]);
  }

  Future<List<PlayerCollection?>> getAllByPlayerIdCityPlayerName(
      List<String> playerIdValues,
      List<String> cityValues,
      List<String> playerNameValues) {
    final len = playerIdValues.length;
    assert(cityValues.length == len && playerNameValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([playerIdValues[i], cityValues[i], playerNameValues[i]]);
    }

    return getAllByIndex('playerId_city_playerName', values);
  }

  List<PlayerCollection?> getAllByPlayerIdCityPlayerNameSync(
      List<String> playerIdValues,
      List<String> cityValues,
      List<String> playerNameValues) {
    final len = playerIdValues.length;
    assert(cityValues.length == len && playerNameValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([playerIdValues[i], cityValues[i], playerNameValues[i]]);
    }

    return getAllByIndexSync('playerId_city_playerName', values);
  }

  Future<int> deleteAllByPlayerIdCityPlayerName(List<String> playerIdValues,
      List<String> cityValues, List<String> playerNameValues) {
    final len = playerIdValues.length;
    assert(cityValues.length == len && playerNameValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([playerIdValues[i], cityValues[i], playerNameValues[i]]);
    }

    return deleteAllByIndex('playerId_city_playerName', values);
  }

  int deleteAllByPlayerIdCityPlayerNameSync(List<String> playerIdValues,
      List<String> cityValues, List<String> playerNameValues) {
    final len = playerIdValues.length;
    assert(cityValues.length == len && playerNameValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([playerIdValues[i], cityValues[i], playerNameValues[i]]);
    }

    return deleteAllByIndexSync('playerId_city_playerName', values);
  }
}

extension PlayerCollectionQueryWhereSort
    on QueryBuilder<PlayerCollection, PlayerCollection, QWhere> {
  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhere> anyIsarId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhere>
      anyPlayerIdCityPlayerName() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'playerId_city_playerName'));
  }
}

extension PlayerCollectionQueryWhere
    on QueryBuilder<PlayerCollection, PlayerCollection, QWhereClause> {
  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhereClause>
      isarIdEqualTo(int isarId) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: isarId,
      includeLower: true,
      upper: isarId,
      includeUpper: true,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhereClause>
      isarIdNotEqualTo(int isarId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: isarId, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: isarId, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: isarId, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: isarId, includeUpper: false),
      );
    }
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhereClause>
      isarIdGreaterThan(int isarId, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: isarId, includeLower: include),
    );
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhereClause>
      isarIdLessThan(int isarId, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: isarId, includeUpper: include),
    );
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhereClause>
      isarIdBetween(
    int lowerIsarId,
    int upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerIsarId,
      includeLower: includeLower,
      upper: upperIsarId,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhereClause>
      playerIdEqualTo(String playerId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'playerId_city_playerName',
      value: [playerId],
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhereClause>
      playerIdNotEqualTo(String playerId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'playerId_city_playerName',
        upper: [playerId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'playerId_city_playerName',
        lower: [playerId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'playerId_city_playerName',
        lower: [playerId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'playerId_city_playerName',
        upper: [playerId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhereClause>
      playerIdCityEqualTo(String playerId, String city) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'playerId_city_playerName',
      value: [playerId, city],
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhereClause>
      playerIdCityNotEqualTo(String playerId, String city) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'playerId_city_playerName',
        upper: [playerId, city],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'playerId_city_playerName',
        lower: [playerId, city],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'playerId_city_playerName',
        lower: [playerId, city],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'playerId_city_playerName',
        upper: [playerId, city],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhereClause>
      playerIdCityPlayerNameEqualTo(
          String playerId, String city, String playerName) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'playerId_city_playerName',
      value: [playerId, city, playerName],
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterWhereClause>
      playerIdCityPlayerNameNotEqualTo(
          String playerId, String city, String playerName) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'playerId_city_playerName',
        upper: [playerId, city, playerName],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'playerId_city_playerName',
        lower: [playerId, city, playerName],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'playerId_city_playerName',
        lower: [playerId, city, playerName],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'playerId_city_playerName',
        upper: [playerId, city, playerName],
        includeUpper: false,
      ));
    }
  }
}

extension PlayerCollectionQueryFilter
    on QueryBuilder<PlayerCollection, PlayerCollection, QFilterCondition> {
  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      cityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      cityGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      cityLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      cityBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'city',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      cityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      cityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      cityContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      cityMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'city',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      isarIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'isarId',
      value: null,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      isarIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isarId',
      value: value,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      isarIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'isarId',
      value: value,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      isarIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'isarId',
      value: value,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      isarIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'isarId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'playerId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'playerId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'playerId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'playerId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'playerId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'playerId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'playerId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'playerId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'playerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'playerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'playerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'playerName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'playerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'playerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'playerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterFilterCondition>
      playerNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'playerName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension PlayerCollectionQueryLinks
    on QueryBuilder<PlayerCollection, PlayerCollection, QFilterCondition> {}

extension PlayerCollectionQueryWhereSortBy
    on QueryBuilder<PlayerCollection, PlayerCollection, QSortBy> {
  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy> sortByCity() {
    return addSortByInternal('city', Sort.asc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      sortByCityDesc() {
    return addSortByInternal('city', Sort.desc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      sortByIsarId() {
    return addSortByInternal('isarId', Sort.asc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      sortByIsarIdDesc() {
    return addSortByInternal('isarId', Sort.desc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      sortByPlayerId() {
    return addSortByInternal('playerId', Sort.asc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      sortByPlayerIdDesc() {
    return addSortByInternal('playerId', Sort.desc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      sortByPlayerName() {
    return addSortByInternal('playerName', Sort.asc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      sortByPlayerNameDesc() {
    return addSortByInternal('playerName', Sort.desc);
  }
}

extension PlayerCollectionQueryWhereSortThenBy
    on QueryBuilder<PlayerCollection, PlayerCollection, QSortThenBy> {
  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy> thenByCity() {
    return addSortByInternal('city', Sort.asc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      thenByCityDesc() {
    return addSortByInternal('city', Sort.desc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      thenByIsarId() {
    return addSortByInternal('isarId', Sort.asc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      thenByIsarIdDesc() {
    return addSortByInternal('isarId', Sort.desc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      thenByPlayerId() {
    return addSortByInternal('playerId', Sort.asc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      thenByPlayerIdDesc() {
    return addSortByInternal('playerId', Sort.desc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      thenByPlayerName() {
    return addSortByInternal('playerName', Sort.asc);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QAfterSortBy>
      thenByPlayerNameDesc() {
    return addSortByInternal('playerName', Sort.desc);
  }
}

extension PlayerCollectionQueryWhereDistinct
    on QueryBuilder<PlayerCollection, PlayerCollection, QDistinct> {
  QueryBuilder<PlayerCollection, PlayerCollection, QDistinct> distinctByCity(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('city', caseSensitive: caseSensitive);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QDistinct>
      distinctByIsarId() {
    return addDistinctByInternal('isarId');
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QDistinct>
      distinctByPlayerId({bool caseSensitive = true}) {
    return addDistinctByInternal('playerId', caseSensitive: caseSensitive);
  }

  QueryBuilder<PlayerCollection, PlayerCollection, QDistinct>
      distinctByPlayerName({bool caseSensitive = true}) {
    return addDistinctByInternal('playerName', caseSensitive: caseSensitive);
  }
}

extension PlayerCollectionQueryProperty
    on QueryBuilder<PlayerCollection, PlayerCollection, QQueryProperty> {
  QueryBuilder<PlayerCollection, String, QQueryOperations> cityProperty() {
    return addPropertyNameInternal('city');
  }

  QueryBuilder<PlayerCollection, int?, QQueryOperations> isarIdProperty() {
    return addPropertyNameInternal('isarId');
  }

  QueryBuilder<PlayerCollection, String, QQueryOperations> playerIdProperty() {
    return addPropertyNameInternal('playerId');
  }

  QueryBuilder<PlayerCollection, String, QQueryOperations>
      playerNameProperty() {
    return addPropertyNameInternal('playerName');
  }
}
