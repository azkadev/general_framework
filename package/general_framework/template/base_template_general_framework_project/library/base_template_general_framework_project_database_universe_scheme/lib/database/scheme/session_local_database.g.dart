// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_local_database.dart';

// **************************************************************************
// _DatabaseUniverseCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetSessionLocalDatabaseCollection on DatabaseUniverse {
  DatabaseUniverseCollection<int, SessionLocalDatabase>
      get sessionLocalDatabases => this.collection();
}

const SessionLocalDatabaseSchema = DatabaseUniverseGeneratedSchema(
  schema: DatabaseUniverseSchema(
    name: 'SessionLocalDatabase',
    idName: 'id',
    embedded: false,
    properties: [
      DatabaseUniversePropertySchema(
        name: 'special_type',
        type: DatabaseUniverseType.string,
      ),
      DatabaseUniversePropertySchema(
        name: 'account_user_id',
        type: DatabaseUniverseType.long,
      ),
      DatabaseUniversePropertySchema(
        name: 'token',
        type: DatabaseUniverseType.string,
      ),
      DatabaseUniversePropertySchema(
        name: 'is_default',
        type: DatabaseUniverseType.bool,
      ),
      DatabaseUniversePropertySchema(
        name: 'from_app_id',
        type: DatabaseUniverseType.string,
      ),
      DatabaseUniversePropertySchema(
        name: 'owner_account_user_id',
        type: DatabaseUniverseType.long,
      ),
    ],
    indexes: [],
  ),
  converter: DatabaseUniverseObjectConverter<int, SessionLocalDatabase>(
    serialize: serializeSessionLocalDatabase,
    deserialize: deserializeSessionLocalDatabase,
    deserializeProperty: deserializeSessionLocalDatabaseProp,
  ),
  embeddedSchemas: [],
);

@databaseUniverseProtected
int serializeSessionLocalDatabase(
    DatabaseUniverseWriter writer, SessionLocalDatabase object) {
  DatabaseUniverseCore.writeString(writer, 1, object.special_type);
  DatabaseUniverseCore.writeLong(writer, 2, object.account_user_id);
  DatabaseUniverseCore.writeString(writer, 3, object.token);
  DatabaseUniverseCore.writeBool(writer, 4, object.is_default);
  DatabaseUniverseCore.writeString(writer, 5, object.from_app_id);
  DatabaseUniverseCore.writeLong(writer, 6, object.owner_account_user_id);
  return object.id;
}

@databaseUniverseProtected
SessionLocalDatabase deserializeSessionLocalDatabase(
    DatabaseUniverseReader reader) {
  final object = SessionLocalDatabase();
  object.special_type = DatabaseUniverseCore.readString(reader, 1) ?? '';
  object.account_user_id = DatabaseUniverseCore.readLong(reader, 2);
  object.token = DatabaseUniverseCore.readString(reader, 3) ?? '';
  object.is_default = DatabaseUniverseCore.readBool(reader, 4);
  object.from_app_id = DatabaseUniverseCore.readString(reader, 5) ?? '';
  object.owner_account_user_id = DatabaseUniverseCore.readLong(reader, 6);
  object.id = DatabaseUniverseCore.readId(reader);
  return object;
}

@databaseUniverseProtected
dynamic deserializeSessionLocalDatabaseProp(
    DatabaseUniverseReader reader, int property) {
  switch (property) {
    case 1:
      return DatabaseUniverseCore.readString(reader, 1) ?? '';
    case 2:
      return DatabaseUniverseCore.readLong(reader, 2);
    case 3:
      return DatabaseUniverseCore.readString(reader, 3) ?? '';
    case 4:
      return DatabaseUniverseCore.readBool(reader, 4);
    case 5:
      return DatabaseUniverseCore.readString(reader, 5) ?? '';
    case 6:
      return DatabaseUniverseCore.readLong(reader, 6);
    case 0:
      return DatabaseUniverseCore.readId(reader);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _SessionLocalDatabaseUpdate {
  bool call({
    required int id,
    String? special_type,
    int? account_user_id,
    String? token,
    bool? is_default,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _SessionLocalDatabaseUpdateImpl implements _SessionLocalDatabaseUpdate {
  const _SessionLocalDatabaseUpdateImpl(this.collection);

  final DatabaseUniverseCollection<int, SessionLocalDatabase> collection;

  @override
  bool call({
    required int id,
    Object? special_type = ignore,
    Object? account_user_id = ignore,
    Object? token = ignore,
    Object? is_default = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (special_type != ignore) 1: special_type as String?,
          if (account_user_id != ignore) 2: account_user_id as int?,
          if (token != ignore) 3: token as String?,
          if (is_default != ignore) 4: is_default as bool?,
          if (from_app_id != ignore) 5: from_app_id as String?,
          if (owner_account_user_id != ignore) 6: owner_account_user_id as int?,
        }) >
        0;
  }
}

sealed class _SessionLocalDatabaseUpdateAll {
  int call({
    required List<int> id,
    String? special_type,
    int? account_user_id,
    String? token,
    bool? is_default,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _SessionLocalDatabaseUpdateAllImpl
    implements _SessionLocalDatabaseUpdateAll {
  const _SessionLocalDatabaseUpdateAllImpl(this.collection);

  final DatabaseUniverseCollection<int, SessionLocalDatabase> collection;

  @override
  int call({
    required List<int> id,
    Object? special_type = ignore,
    Object? account_user_id = ignore,
    Object? token = ignore,
    Object? is_default = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return collection.updateProperties(id, {
      if (special_type != ignore) 1: special_type as String?,
      if (account_user_id != ignore) 2: account_user_id as int?,
      if (token != ignore) 3: token as String?,
      if (is_default != ignore) 4: is_default as bool?,
      if (from_app_id != ignore) 5: from_app_id as String?,
      if (owner_account_user_id != ignore) 6: owner_account_user_id as int?,
    });
  }
}

extension SessionLocalDatabaseUpdate
    on DatabaseUniverseCollection<int, SessionLocalDatabase> {
  _SessionLocalDatabaseUpdate get update =>
      _SessionLocalDatabaseUpdateImpl(this);

  _SessionLocalDatabaseUpdateAll get updateAll =>
      _SessionLocalDatabaseUpdateAllImpl(this);
}

sealed class _SessionLocalDatabaseQueryUpdate {
  int call({
    String? special_type,
    int? account_user_id,
    String? token,
    bool? is_default,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _SessionLocalDatabaseQueryUpdateImpl
    implements _SessionLocalDatabaseQueryUpdate {
  const _SessionLocalDatabaseQueryUpdateImpl(this.query, {this.limit});

  final DatabaseUniverseQuery<SessionLocalDatabase> query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? account_user_id = ignore,
    Object? token = ignore,
    Object? is_default = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (special_type != ignore) 1: special_type as String?,
      if (account_user_id != ignore) 2: account_user_id as int?,
      if (token != ignore) 3: token as String?,
      if (is_default != ignore) 4: is_default as bool?,
      if (from_app_id != ignore) 5: from_app_id as String?,
      if (owner_account_user_id != ignore) 6: owner_account_user_id as int?,
    });
  }
}

extension SessionLocalDatabaseQueryUpdate
    on DatabaseUniverseQuery<SessionLocalDatabase> {
  _SessionLocalDatabaseQueryUpdate get updateFirst =>
      _SessionLocalDatabaseQueryUpdateImpl(this, limit: 1);

  _SessionLocalDatabaseQueryUpdate get updateAll =>
      _SessionLocalDatabaseQueryUpdateImpl(this);
}

class _SessionLocalDatabaseQueryBuilderUpdateImpl
    implements _SessionLocalDatabaseQueryUpdate {
  const _SessionLocalDatabaseQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QOperations>
      query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? account_user_id = ignore,
    Object? token = ignore,
    Object? is_default = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (special_type != ignore) 1: special_type as String?,
        if (account_user_id != ignore) 2: account_user_id as int?,
        if (token != ignore) 3: token as String?,
        if (is_default != ignore) 4: is_default as bool?,
        if (from_app_id != ignore) 5: from_app_id as String?,
        if (owner_account_user_id != ignore) 6: owner_account_user_id as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension SessionLocalDatabaseQueryBuilderUpdate
    on QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QOperations> {
  _SessionLocalDatabaseQueryUpdate get updateFirst =>
      _SessionLocalDatabaseQueryBuilderUpdateImpl(this, limit: 1);

  _SessionLocalDatabaseQueryUpdate get updateAll =>
      _SessionLocalDatabaseQueryBuilderUpdateImpl(this);
}

extension SessionLocalDatabaseQueryFilter on QueryBuilder<SessionLocalDatabase,
    SessionLocalDatabase, QFilterCondition> {
  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> special_typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> special_typeGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> special_typeGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> special_typeLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> special_typeLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> special_typeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> special_typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> special_typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
          QAfterFilterCondition>
      special_typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
          QAfterFilterCondition>
      special_typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> special_typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> special_typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> account_user_idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> account_user_idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> account_user_idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> account_user_idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> account_user_idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> account_user_idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> tokenEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> tokenGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> tokenGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> tokenLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> tokenLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> tokenBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> tokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> tokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
          QAfterFilterCondition>
      tokenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
          QAfterFilterCondition>
      tokenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> tokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> tokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> is_defaultEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> from_app_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> from_app_idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> from_app_idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> from_app_idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> from_app_idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> from_app_idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> from_app_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> from_app_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
          QAfterFilterCondition>
      from_app_idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
          QAfterFilterCondition>
      from_app_idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> from_app_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> from_app_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> owner_account_user_idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> owner_account_user_idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> owner_account_user_idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> owner_account_user_idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> owner_account_user_idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> owner_account_user_idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase,
      QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension SessionLocalDatabaseQueryObject on QueryBuilder<SessionLocalDatabase,
    SessionLocalDatabase, QFilterCondition> {}

extension SessionLocalDatabaseQuerySortBy
    on QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QSortBy> {
  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortBySpecial_typeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortByAccount_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortByAccount_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortByToken({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortByTokenDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortByIs_default() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortByIs_defaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortByFrom_app_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension SessionLocalDatabaseQuerySortThenBy
    on QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QSortThenBy> {
  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenBySpecial_typeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenByAccount_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenByAccount_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenByToken({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenByTokenDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenByIs_default() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenByIs_defaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenByFrom_app_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension SessionLocalDatabaseQueryWhereDistinct
    on QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QDistinct> {
  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterDistinct>
      distinctBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterDistinct>
      distinctByAccount_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterDistinct>
      distinctByToken({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterDistinct>
      distinctByIs_default() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterDistinct>
      distinctByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QAfterDistinct>
      distinctByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
    });
  }
}

extension SessionLocalDatabaseQueryProperty1
    on QueryBuilder<SessionLocalDatabase, SessionLocalDatabase, QProperty> {
  QueryBuilder<SessionLocalDatabase, String, QAfterProperty>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SessionLocalDatabase, int, QAfterProperty>
      account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<SessionLocalDatabase, String, QAfterProperty> tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<SessionLocalDatabase, bool, QAfterProperty>
      is_defaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<SessionLocalDatabase, String, QAfterProperty>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<SessionLocalDatabase, int, QAfterProperty>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<SessionLocalDatabase, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension SessionLocalDatabaseQueryProperty2<R>
    on QueryBuilder<SessionLocalDatabase, R, QAfterProperty> {
  QueryBuilder<SessionLocalDatabase, (R, String), QAfterProperty>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SessionLocalDatabase, (R, int), QAfterProperty>
      account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<SessionLocalDatabase, (R, String), QAfterProperty>
      tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<SessionLocalDatabase, (R, bool), QAfterProperty>
      is_defaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<SessionLocalDatabase, (R, String), QAfterProperty>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<SessionLocalDatabase, (R, int), QAfterProperty>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<SessionLocalDatabase, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension SessionLocalDatabaseQueryProperty3<R1, R2>
    on QueryBuilder<SessionLocalDatabase, (R1, R2), QAfterProperty> {
  QueryBuilder<SessionLocalDatabase, (R1, R2, String), QOperations>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SessionLocalDatabase, (R1, R2, int), QOperations>
      account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<SessionLocalDatabase, (R1, R2, String), QOperations>
      tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<SessionLocalDatabase, (R1, R2, bool), QOperations>
      is_defaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<SessionLocalDatabase, (R1, R2, String), QOperations>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<SessionLocalDatabase, (R1, R2, int), QOperations>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<SessionLocalDatabase, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}
