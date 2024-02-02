// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDBGameMatchCollection on Isar {
  IsarCollection<DBGameMatch> get dBGameMatchs => this.collection();
}

const DBGameMatchSchema = CollectionSchema(
  name: r'DBGameMatch',
  id: 7139125257709374616,
  properties: {
    r'bookmarked': PropertySchema(
      id: 0,
      name: r'bookmarked',
      type: IsarType.bool,
    ),
    r'date': PropertySchema(
      id: 1,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'mode': PropertySchema(
      id: 2,
      name: r'mode',
      type: IsarType.byte,
      enumMap: _DBGameMatchmodeEnumValueMap,
    ),
    r'ongoing': PropertySchema(
      id: 3,
      name: r'ongoing',
      type: IsarType.bool,
    ),
    r'target': PropertySchema(
      id: 4,
      name: r'target',
      type: IsarType.long,
    )
  },
  estimateSize: _dBGameMatchEstimateSize,
  serialize: _dBGameMatchSerialize,
  deserialize: _dBGameMatchDeserialize,
  deserializeProp: _dBGameMatchDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'game': LinkSchema(
      id: -9070076451377777398,
      name: r'game',
      target: r'DBGame',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _dBGameMatchGetId,
  getLinks: _dBGameMatchGetLinks,
  attach: _dBGameMatchAttach,
  version: '3.1.0+1',
);

int _dBGameMatchEstimateSize(
  DBGameMatch object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _dBGameMatchSerialize(
  DBGameMatch object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.bookmarked);
  writer.writeDateTime(offsets[1], object.date);
  writer.writeByte(offsets[2], object.mode.index);
  writer.writeBool(offsets[3], object.ongoing);
  writer.writeLong(offsets[4], object.target);
}

DBGameMatch _dBGameMatchDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DBGameMatch(
    bookmarked: reader.readBool(offsets[0]),
    date: reader.readDateTime(offsets[1]),
    mode: _DBGameMatchmodeValueEnumMap[reader.readByteOrNull(offsets[2])] ??
        MatchMode.goldenTarget,
    ongoing: reader.readBool(offsets[3]),
    target: reader.readLong(offsets[4]),
  );
  object.id = id;
  return object;
}

P _dBGameMatchDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (_DBGameMatchmodeValueEnumMap[reader.readByteOrNull(offset)] ??
          MatchMode.goldenTarget) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _DBGameMatchmodeEnumValueMap = {
  'goldenTarget': 0,
  'lethalTarget': 1,
  'lastPlayerStanding': 2,
  'lastLoserStanding': 3,
};
const _DBGameMatchmodeValueEnumMap = {
  0: MatchMode.goldenTarget,
  1: MatchMode.lethalTarget,
  2: MatchMode.lastPlayerStanding,
  3: MatchMode.lastLoserStanding,
};

Id _dBGameMatchGetId(DBGameMatch object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dBGameMatchGetLinks(DBGameMatch object) {
  return [object.game];
}

void _dBGameMatchAttach(
    IsarCollection<dynamic> col, Id id, DBGameMatch object) {
  object.id = id;
  object.game.attach(col, col.isar.collection<DBGame>(), r'game', id);
}

extension DBGameMatchQueryWhereSort
    on QueryBuilder<DBGameMatch, DBGameMatch, QWhere> {
  QueryBuilder<DBGameMatch, DBGameMatch, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DBGameMatchQueryWhere
    on QueryBuilder<DBGameMatch, DBGameMatch, QWhereClause> {
  QueryBuilder<DBGameMatch, DBGameMatch, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DBGameMatchQueryFilter
    on QueryBuilder<DBGameMatch, DBGameMatch, QFilterCondition> {
  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition>
      bookmarkedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookmarked',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> modeEqualTo(
      MatchMode value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mode',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> modeGreaterThan(
    MatchMode value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mode',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> modeLessThan(
    MatchMode value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mode',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> modeBetween(
    MatchMode lower,
    MatchMode upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> ongoingEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ongoing',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> targetEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'target',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition>
      targetGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'target',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> targetLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'target',
        value: value,
      ));
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> targetBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'target',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DBGameMatchQueryObject
    on QueryBuilder<DBGameMatch, DBGameMatch, QFilterCondition> {}

extension DBGameMatchQueryLinks
    on QueryBuilder<DBGameMatch, DBGameMatch, QFilterCondition> {
  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> game(
      FilterQuery<DBGame> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'game');
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterFilterCondition> gameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'game', 0, true, 0, true);
    });
  }
}

extension DBGameMatchQuerySortBy
    on QueryBuilder<DBGameMatch, DBGameMatch, QSortBy> {
  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> sortByBookmarked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookmarked', Sort.asc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> sortByBookmarkedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookmarked', Sort.desc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> sortByMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mode', Sort.asc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> sortByModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mode', Sort.desc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> sortByOngoing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ongoing', Sort.asc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> sortByOngoingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ongoing', Sort.desc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> sortByTarget() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'target', Sort.asc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> sortByTargetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'target', Sort.desc);
    });
  }
}

extension DBGameMatchQuerySortThenBy
    on QueryBuilder<DBGameMatch, DBGameMatch, QSortThenBy> {
  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> thenByBookmarked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookmarked', Sort.asc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> thenByBookmarkedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookmarked', Sort.desc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> thenByMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mode', Sort.asc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> thenByModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mode', Sort.desc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> thenByOngoing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ongoing', Sort.asc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> thenByOngoingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ongoing', Sort.desc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> thenByTarget() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'target', Sort.asc);
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QAfterSortBy> thenByTargetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'target', Sort.desc);
    });
  }
}

extension DBGameMatchQueryWhereDistinct
    on QueryBuilder<DBGameMatch, DBGameMatch, QDistinct> {
  QueryBuilder<DBGameMatch, DBGameMatch, QDistinct> distinctByBookmarked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bookmarked');
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QDistinct> distinctByMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mode');
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QDistinct> distinctByOngoing() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ongoing');
    });
  }

  QueryBuilder<DBGameMatch, DBGameMatch, QDistinct> distinctByTarget() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'target');
    });
  }
}

extension DBGameMatchQueryProperty
    on QueryBuilder<DBGameMatch, DBGameMatch, QQueryProperty> {
  QueryBuilder<DBGameMatch, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DBGameMatch, bool, QQueryOperations> bookmarkedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bookmarked');
    });
  }

  QueryBuilder<DBGameMatch, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<DBGameMatch, MatchMode, QQueryOperations> modeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mode');
    });
  }

  QueryBuilder<DBGameMatch, bool, QQueryOperations> ongoingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ongoing');
    });
  }

  QueryBuilder<DBGameMatch, int, QQueryOperations> targetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'target');
    });
  }
}
