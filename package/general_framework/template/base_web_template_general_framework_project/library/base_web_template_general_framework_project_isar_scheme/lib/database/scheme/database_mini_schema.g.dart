/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_mini_schema.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetDatabaseMiniSchemaCollection on Isar {
  IsarCollection<int, DatabaseMiniSchema> get databaseMiniSchemas => this.collection();
}

const DatabaseMiniSchemaSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'DatabaseMiniSchema',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'special_type',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'application_configuration',
        type: IsarType.object,
        target: 'ApplicationConfiguration',
      ),
      IsarPropertySchema(
        name: 'accounts',
        type: IsarType.objectList,
        target: 'Accounts',
      ),
      IsarPropertySchema(
        name: 'sessions',
        type: IsarType.objectList,
        target: 'Sessions',
      ),
      IsarPropertySchema(
        name: 'from_app_id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'owner_account_user_id',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'is_test',
        type: IsarType.bool,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, DatabaseMiniSchema>(
    serialize: serializeDatabaseMiniSchema,
    deserialize: deserializeDatabaseMiniSchema,
    deserializeProperty: deserializeDatabaseMiniSchemaProp,
  ),
  embeddedSchemas: [ApplicationConfigurationSchema, AccountsSchema, SessionsSchema],
);

@isarProtected
int serializeDatabaseMiniSchema(IsarWriter writer, DatabaseMiniSchema object) {
  IsarCore.writeString(writer, 1, object.special_type);
  {
    final value = object.application_configuration;
    final objectWriter = IsarCore.beginObject(writer, 2);
    serializeApplicationConfiguration(objectWriter, value);
    IsarCore.endObject(writer, objectWriter);
  }
  {
    final list = object.accounts;
    final listWriter = IsarCore.beginList(writer, 3, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializeAccounts(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  {
    final list = object.sessions;
    final listWriter = IsarCore.beginList(writer, 4, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializeSessions(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  IsarCore.writeString(writer, 5, object.from_app_id);
  IsarCore.writeLong(writer, 6, object.owner_account_user_id);
  IsarCore.writeBool(writer, 7, object.is_test);
  return object.id;
}

@isarProtected
DatabaseMiniSchema deserializeDatabaseMiniSchema(IsarReader reader) {
  final object = DatabaseMiniSchema();
  object.special_type = IsarCore.readString(reader, 1) ?? '';
  {
    final objectReader = IsarCore.readObject(reader, 2);
    if (objectReader.isNull) {
      object.application_configuration = ApplicationConfiguration();
    } else {
      final embedded = deserializeApplicationConfiguration(objectReader);
      IsarCore.freeReader(objectReader);
      object.application_configuration = embedded;
    }
  }
  {
    final length = IsarCore.readList(reader, 3, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        object.accounts = const <Accounts>[];
      } else {
        final list = List<Accounts>.filled(length, Accounts(), growable: true);
        for (var i = 0; i < length; i++) {
          {
            final objectReader = IsarCore.readObject(reader, i);
            if (objectReader.isNull) {
              list[i] = Accounts();
            } else {
              final embedded = deserializeAccounts(objectReader);
              IsarCore.freeReader(objectReader);
              list[i] = embedded;
            }
          }
        }
        IsarCore.freeReader(reader);
        object.accounts = list;
      }
    }
  }
  {
    final length = IsarCore.readList(reader, 4, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        object.sessions = const <Sessions>[];
      } else {
        final list = List<Sessions>.filled(length, Sessions(), growable: true);
        for (var i = 0; i < length; i++) {
          {
            final objectReader = IsarCore.readObject(reader, i);
            if (objectReader.isNull) {
              list[i] = Sessions();
            } else {
              final embedded = deserializeSessions(objectReader);
              IsarCore.freeReader(objectReader);
              list[i] = embedded;
            }
          }
        }
        IsarCore.freeReader(reader);
        object.sessions = list;
      }
    }
  }
  object.from_app_id = IsarCore.readString(reader, 5) ?? '';
  object.owner_account_user_id = IsarCore.readLong(reader, 6);
  object.is_test = IsarCore.readBool(reader, 7);
  object.id = IsarCore.readId(reader);
  return object;
}

@isarProtected
dynamic deserializeDatabaseMiniSchemaProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      {
        final objectReader = IsarCore.readObject(reader, 2);
        if (objectReader.isNull) {
          return ApplicationConfiguration();
        } else {
          final embedded = deserializeApplicationConfiguration(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 3:
      {
        final length = IsarCore.readList(reader, 3, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <Accounts>[];
          } else {
            final list = List<Accounts>.filled(length, Accounts(), growable: true);
            for (var i = 0; i < length; i++) {
              {
                final objectReader = IsarCore.readObject(reader, i);
                if (objectReader.isNull) {
                  list[i] = Accounts();
                } else {
                  final embedded = deserializeAccounts(objectReader);
                  IsarCore.freeReader(objectReader);
                  list[i] = embedded;
                }
              }
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 4:
      {
        final length = IsarCore.readList(reader, 4, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <Sessions>[];
          } else {
            final list = List<Sessions>.filled(length, Sessions(), growable: true);
            for (var i = 0; i < length; i++) {
              {
                final objectReader = IsarCore.readObject(reader, i);
                if (objectReader.isNull) {
                  list[i] = Sessions();
                } else {
                  final embedded = deserializeSessions(objectReader);
                  IsarCore.freeReader(objectReader);
                  list[i] = embedded;
                }
              }
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 5:
      return IsarCore.readString(reader, 5) ?? '';
    case 6:
      return IsarCore.readLong(reader, 6);
    case 7:
      return IsarCore.readBool(reader, 7);
    case 0:
      return IsarCore.readId(reader);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _DatabaseMiniSchemaUpdate {
  bool call({
    required int id,
    String? special_type,
    String? from_app_id,
    int? owner_account_user_id,
    bool? is_test,
  });
}

class _DatabaseMiniSchemaUpdateImpl implements _DatabaseMiniSchemaUpdate {
  const _DatabaseMiniSchemaUpdateImpl(this.collection);

  final IsarCollection<int, DatabaseMiniSchema> collection;

  @override
  bool call({
    required int id,
    Object? special_type = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
    Object? is_test = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (special_type != ignore) 1: special_type as String?,
          if (from_app_id != ignore) 5: from_app_id as String?,
          if (owner_account_user_id != ignore) 6: owner_account_user_id as int?,
          if (is_test != ignore) 7: is_test as bool?,
        }) >
        0;
  }
}

sealed class _DatabaseMiniSchemaUpdateAll {
  int call({
    required List<int> id,
    String? special_type,
    String? from_app_id,
    int? owner_account_user_id,
    bool? is_test,
  });
}

class _DatabaseMiniSchemaUpdateAllImpl implements _DatabaseMiniSchemaUpdateAll {
  const _DatabaseMiniSchemaUpdateAllImpl(this.collection);

  final IsarCollection<int, DatabaseMiniSchema> collection;

  @override
  int call({
    required List<int> id,
    Object? special_type = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
    Object? is_test = ignore,
  }) {
    return collection.updateProperties(id, {
      if (special_type != ignore) 1: special_type as String?,
      if (from_app_id != ignore) 5: from_app_id as String?,
      if (owner_account_user_id != ignore) 6: owner_account_user_id as int?,
      if (is_test != ignore) 7: is_test as bool?,
    });
  }
}

extension DatabaseMiniSchemaUpdate on IsarCollection<int, DatabaseMiniSchema> {
  _DatabaseMiniSchemaUpdate get update => _DatabaseMiniSchemaUpdateImpl(this);

  _DatabaseMiniSchemaUpdateAll get updateAll => _DatabaseMiniSchemaUpdateAllImpl(this);
}

sealed class _DatabaseMiniSchemaQueryUpdate {
  int call({
    String? special_type,
    String? from_app_id,
    int? owner_account_user_id,
    bool? is_test,
  });
}

class _DatabaseMiniSchemaQueryUpdateImpl implements _DatabaseMiniSchemaQueryUpdate {
  const _DatabaseMiniSchemaQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<DatabaseMiniSchema> query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
    Object? is_test = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (special_type != ignore) 1: special_type as String?,
      if (from_app_id != ignore) 5: from_app_id as String?,
      if (owner_account_user_id != ignore) 6: owner_account_user_id as int?,
      if (is_test != ignore) 7: is_test as bool?,
    });
  }
}

extension DatabaseMiniSchemaQueryUpdate on IsarQuery<DatabaseMiniSchema> {
  _DatabaseMiniSchemaQueryUpdate get updateFirst => _DatabaseMiniSchemaQueryUpdateImpl(this, limit: 1);

  _DatabaseMiniSchemaQueryUpdate get updateAll => _DatabaseMiniSchemaQueryUpdateImpl(this);
}

class _DatabaseMiniSchemaQueryBuilderUpdateImpl implements _DatabaseMiniSchemaQueryUpdate {
  const _DatabaseMiniSchemaQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
    Object? is_test = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (special_type != ignore) 1: special_type as String?,
        if (from_app_id != ignore) 5: from_app_id as String?,
        if (owner_account_user_id != ignore) 6: owner_account_user_id as int?,
        if (is_test != ignore) 7: is_test as bool?,
      });
    } finally {
      q.close();
    }
  }
}

extension DatabaseMiniSchemaQueryBuilderUpdate on QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QOperations> {
  _DatabaseMiniSchemaQueryUpdate get updateFirst => _DatabaseMiniSchemaQueryBuilderUpdateImpl(this, limit: 1);

  _DatabaseMiniSchemaQueryUpdate get updateAll => _DatabaseMiniSchemaQueryBuilderUpdateImpl(this);
}

extension DatabaseMiniSchemaQueryFilter on QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QFilterCondition> {
  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> special_typeEqualTo(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> special_typeGreaterThan(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> special_typeGreaterThanOrEqualTo(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> special_typeLessThan(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> special_typeLessThanOrEqualTo(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> special_typeBetween(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> special_typeStartsWith(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> special_typeEndsWith(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> special_typeContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> special_typeMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> special_typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> special_typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> accountsIsEmpty() {
    return not().accountsIsNotEmpty();
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> accountsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 3, value: null),
      );
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> sessionsIsEmpty() {
    return not().sessionsIsNotEmpty();
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> sessionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 4, value: null),
      );
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> from_app_idEqualTo(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> from_app_idGreaterThan(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> from_app_idGreaterThanOrEqualTo(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> from_app_idLessThan(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> from_app_idLessThanOrEqualTo(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> from_app_idBetween(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> from_app_idStartsWith(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> from_app_idEndsWith(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> from_app_idContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> from_app_idMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> from_app_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> from_app_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> owner_account_user_idEqualTo(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> owner_account_user_idGreaterThan(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> owner_account_user_idGreaterThanOrEqualTo(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> owner_account_user_idLessThan(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> owner_account_user_idLessThanOrEqualTo(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> owner_account_user_idBetween(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> is_testEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> idGreaterThanOrEqualTo(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> idLessThanOrEqualTo(
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

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> idBetween(
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

extension DatabaseMiniSchemaQueryObject on QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QFilterCondition> {
  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterFilterCondition> application_configuration(FilterQuery<ApplicationConfiguration> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 2);
    });
  }
}

extension DatabaseMiniSchemaQuerySortBy on QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QSortBy> {
  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> sortBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> sortBySpecial_typeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> sortByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> sortByFrom_app_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> sortByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> sortByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> sortByIs_test() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> sortByIs_testDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension DatabaseMiniSchemaQuerySortThenBy on QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QSortThenBy> {
  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> thenBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> thenBySpecial_typeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> thenByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> thenByFrom_app_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> thenByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> thenByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> thenByIs_test() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> thenByIs_testDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension DatabaseMiniSchemaQueryWhereDistinct on QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QDistinct> {
  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterDistinct> distinctBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterDistinct> distinctByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterDistinct> distinctByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
    });
  }

  QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QAfterDistinct> distinctByIs_test() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }
}

extension DatabaseMiniSchemaQueryProperty1 on QueryBuilder<DatabaseMiniSchema, DatabaseMiniSchema, QProperty> {
  QueryBuilder<DatabaseMiniSchema, String, QAfterProperty> special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<DatabaseMiniSchema, ApplicationConfiguration, QAfterProperty> application_configurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DatabaseMiniSchema, List<Accounts>, QAfterProperty> accountsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DatabaseMiniSchema, List<Sessions>, QAfterProperty> sessionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DatabaseMiniSchema, String, QAfterProperty> from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DatabaseMiniSchema, int, QAfterProperty> owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<DatabaseMiniSchema, bool, QAfterProperty> is_testProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<DatabaseMiniSchema, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension DatabaseMiniSchemaQueryProperty2<R> on QueryBuilder<DatabaseMiniSchema, R, QAfterProperty> {
  QueryBuilder<DatabaseMiniSchema, (R, String), QAfterProperty> special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R, ApplicationConfiguration), QAfterProperty> application_configurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R, List<Accounts>), QAfterProperty> accountsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R, List<Sessions>), QAfterProperty> sessionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R, String), QAfterProperty> from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R, int), QAfterProperty> owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R, bool), QAfterProperty> is_testProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension DatabaseMiniSchemaQueryProperty3<R1, R2> on QueryBuilder<DatabaseMiniSchema, (R1, R2), QAfterProperty> {
  QueryBuilder<DatabaseMiniSchema, (R1, R2, String), QOperations> special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R1, R2, ApplicationConfiguration), QOperations> application_configurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R1, R2, List<Accounts>), QOperations> accountsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R1, R2, List<Sessions>), QOperations> sessionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R1, R2, String), QOperations> from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R1, R2, int), QOperations> owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R1, R2, bool), QOperations> is_testProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<DatabaseMiniSchema, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const ApplicationConfigurationSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'ApplicationConfiguration',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'special_type',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, ApplicationConfiguration>(
    serialize: serializeApplicationConfiguration,
    deserialize: deserializeApplicationConfiguration,
  ),
);

@isarProtected
int serializeApplicationConfiguration(IsarWriter writer, ApplicationConfiguration object) {
  IsarCore.writeString(writer, 1, object.special_type);
  return 0;
}

@isarProtected
ApplicationConfiguration deserializeApplicationConfiguration(IsarReader reader) {
  final object = ApplicationConfiguration();
  object.special_type = IsarCore.readString(reader, 1) ?? '';
  return object;
}

extension ApplicationConfigurationQueryFilter on QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QFilterCondition> {
  QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QAfterFilterCondition> special_typeEqualTo(
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

  QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QAfterFilterCondition> special_typeGreaterThan(
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

  QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QAfterFilterCondition> special_typeGreaterThanOrEqualTo(
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

  QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QAfterFilterCondition> special_typeLessThan(
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

  QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QAfterFilterCondition> special_typeLessThanOrEqualTo(
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

  QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QAfterFilterCondition> special_typeBetween(
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

  QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QAfterFilterCondition> special_typeStartsWith(
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

  QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QAfterFilterCondition> special_typeEndsWith(
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

  QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QAfterFilterCondition> special_typeContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QAfterFilterCondition> special_typeMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QAfterFilterCondition> special_typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QAfterFilterCondition> special_typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }
}

extension ApplicationConfigurationQueryObject on QueryBuilder<ApplicationConfiguration, ApplicationConfiguration, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const AccountsSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Accounts',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'special_type',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'is_test',
        type: IsarType.bool,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, Accounts>(
    serialize: serializeAccounts,
    deserialize: deserializeAccounts,
  ),
);

@isarProtected
int serializeAccounts(IsarWriter writer, Accounts object) {
  IsarCore.writeString(writer, 1, object.special_type);
  IsarCore.writeBool(writer, 2, object.is_test);
  return 0;
}

@isarProtected
Accounts deserializeAccounts(IsarReader reader) {
  final object = Accounts();
  object.special_type = IsarCore.readString(reader, 1) ?? '';
  object.is_test = IsarCore.readBool(reader, 2);
  return object;
}

extension AccountsQueryFilter on QueryBuilder<Accounts, Accounts, QFilterCondition> {
  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> special_typeEqualTo(
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

  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> special_typeGreaterThan(
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

  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> special_typeGreaterThanOrEqualTo(
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

  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> special_typeLessThan(
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

  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> special_typeLessThanOrEqualTo(
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

  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> special_typeBetween(
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

  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> special_typeStartsWith(
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

  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> special_typeEndsWith(
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

  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> special_typeContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> special_typeMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> special_typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> special_typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Accounts, Accounts, QAfterFilterCondition> is_testEqualTo(
    bool value,
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
}

extension AccountsQueryObject on QueryBuilder<Accounts, Accounts, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const SessionsSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Sessions',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'special_type',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'is_test',
        type: IsarType.bool,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, Sessions>(
    serialize: serializeSessions,
    deserialize: deserializeSessions,
  ),
);

@isarProtected
int serializeSessions(IsarWriter writer, Sessions object) {
  IsarCore.writeString(writer, 1, object.special_type);
  IsarCore.writeBool(writer, 2, object.is_test);
  return 0;
}

@isarProtected
Sessions deserializeSessions(IsarReader reader) {
  final object = Sessions();
  object.special_type = IsarCore.readString(reader, 1) ?? '';
  object.is_test = IsarCore.readBool(reader, 2);
  return object;
}

extension SessionsQueryFilter on QueryBuilder<Sessions, Sessions, QFilterCondition> {
  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> special_typeEqualTo(
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

  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> special_typeGreaterThan(
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

  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> special_typeGreaterThanOrEqualTo(
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

  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> special_typeLessThan(
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

  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> special_typeLessThanOrEqualTo(
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

  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> special_typeBetween(
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

  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> special_typeStartsWith(
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

  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> special_typeEndsWith(
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

  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> special_typeContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> special_typeMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> special_typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> special_typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Sessions, Sessions, QAfterFilterCondition> is_testEqualTo(
    bool value,
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
}

extension SessionsQueryObject on QueryBuilder<Sessions, Sessions, QFilterCondition> {}
