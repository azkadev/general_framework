// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_local_database.dart';

// **************************************************************************
// _DatabaseUniverseCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetMessageLocalDatabaseCollection on DatabaseUniverse {
  DatabaseUniverseCollection<int, MessageLocalDatabase>
      get messageLocalDatabases => this.collection();
}

const MessageLocalDatabaseSchema = DatabaseUniverseGeneratedSchema(
  schema: DatabaseUniverseSchema(
    name: 'MessageLocalDatabase',
    idName: 'id',
    embedded: false,
    properties: [
      DatabaseUniversePropertySchema(
        name: 'special_type',
        type: DatabaseUniverseType.string,
      ),
      DatabaseUniversePropertySchema(
        name: 'is_outgoing',
        type: DatabaseUniverseType.bool,
      ),
      DatabaseUniversePropertySchema(
        name: 'message_id',
        type: DatabaseUniverseType.long,
      ),
      DatabaseUniversePropertySchema(
        name: 'from_user_id',
        type: DatabaseUniverseType.long,
      ),
      DatabaseUniversePropertySchema(
        name: 'text',
        type: DatabaseUniverseType.string,
      ),
      DatabaseUniversePropertySchema(
        name: 'date',
        type: DatabaseUniverseType.long,
      ),
      DatabaseUniversePropertySchema(
        name: 'update_date',
        type: DatabaseUniverseType.long,
      ),
      DatabaseUniversePropertySchema(
        name: 'status',
        type: DatabaseUniverseType.string,
      ),
      DatabaseUniversePropertySchema(
        name: 'chat_ids',
        type: DatabaseUniverseType.longList,
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
  converter: DatabaseUniverseObjectConverter<int, MessageLocalDatabase>(
    serialize: serializeMessageLocalDatabase,
    deserialize: deserializeMessageLocalDatabase,
    deserializeProperty: deserializeMessageLocalDatabaseProp,
  ),
  embeddedSchemas: [],
);

@databaseUniverseProtected
int serializeMessageLocalDatabase(
    DatabaseUniverseWriter writer, MessageLocalDatabase object) {
  DatabaseUniverseCore.writeString(writer, 1, object.special_type);
  DatabaseUniverseCore.writeBool(writer, 2, object.is_outgoing);
  DatabaseUniverseCore.writeLong(writer, 3, object.message_id);
  DatabaseUniverseCore.writeLong(writer, 4, object.from_user_id);
  DatabaseUniverseCore.writeString(writer, 5, object.text);
  DatabaseUniverseCore.writeLong(writer, 6, object.date);
  DatabaseUniverseCore.writeLong(writer, 7, object.update_date);
  DatabaseUniverseCore.writeString(writer, 8, object.status);
  {
    final list = object.chat_ids;
    final listWriter = DatabaseUniverseCore.beginList(writer, 9, list.length);
    for (var i = 0; i < list.length; i++) {
      DatabaseUniverseCore.writeLong(listWriter, i, list[i]);
    }
    DatabaseUniverseCore.endList(writer, listWriter);
  }
  DatabaseUniverseCore.writeString(writer, 10, object.from_app_id);
  DatabaseUniverseCore.writeLong(writer, 11, object.owner_account_user_id);
  return object.id;
}

@databaseUniverseProtected
MessageLocalDatabase deserializeMessageLocalDatabase(
    DatabaseUniverseReader reader) {
  final object = MessageLocalDatabase();
  object.special_type = DatabaseUniverseCore.readString(reader, 1) ?? '';
  object.is_outgoing = DatabaseUniverseCore.readBool(reader, 2);
  object.message_id = DatabaseUniverseCore.readLong(reader, 3);
  object.from_user_id = DatabaseUniverseCore.readLong(reader, 4);
  object.text = DatabaseUniverseCore.readString(reader, 5) ?? '';
  object.date = DatabaseUniverseCore.readLong(reader, 6);
  object.update_date = DatabaseUniverseCore.readLong(reader, 7);
  object.status = DatabaseUniverseCore.readString(reader, 8) ?? '';
  {
    final length = DatabaseUniverseCore.readList(
        reader, 9, DatabaseUniverseCore.readerPtrPtr);
    {
      final reader = DatabaseUniverseCore.readerPtr;
      if (reader.isNull) {
        object.chat_ids = const <int>[];
      } else {
        final list =
            List<int>.filled(length, -9223372036854775808, growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = DatabaseUniverseCore.readLong(reader, i);
        }
        DatabaseUniverseCore.freeReader(reader);
        object.chat_ids = list;
      }
    }
  }
  object.from_app_id = DatabaseUniverseCore.readString(reader, 10) ?? '';
  object.owner_account_user_id = DatabaseUniverseCore.readLong(reader, 11);
  object.id = DatabaseUniverseCore.readId(reader);
  return object;
}

@databaseUniverseProtected
dynamic deserializeMessageLocalDatabaseProp(
    DatabaseUniverseReader reader, int property) {
  switch (property) {
    case 1:
      return DatabaseUniverseCore.readString(reader, 1) ?? '';
    case 2:
      return DatabaseUniverseCore.readBool(reader, 2);
    case 3:
      return DatabaseUniverseCore.readLong(reader, 3);
    case 4:
      return DatabaseUniverseCore.readLong(reader, 4);
    case 5:
      return DatabaseUniverseCore.readString(reader, 5) ?? '';
    case 6:
      return DatabaseUniverseCore.readLong(reader, 6);
    case 7:
      return DatabaseUniverseCore.readLong(reader, 7);
    case 8:
      return DatabaseUniverseCore.readString(reader, 8) ?? '';
    case 9:
      {
        final length = DatabaseUniverseCore.readList(
            reader, 9, DatabaseUniverseCore.readerPtrPtr);
        {
          final reader = DatabaseUniverseCore.readerPtr;
          if (reader.isNull) {
            return const <int>[];
          } else {
            final list =
                List<int>.filled(length, -9223372036854775808, growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = DatabaseUniverseCore.readLong(reader, i);
            }
            DatabaseUniverseCore.freeReader(reader);
            return list;
          }
        }
      }
    case 10:
      return DatabaseUniverseCore.readString(reader, 10) ?? '';
    case 11:
      return DatabaseUniverseCore.readLong(reader, 11);
    case 0:
      return DatabaseUniverseCore.readId(reader);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _MessageLocalDatabaseUpdate {
  bool call({
    required int id,
    String? special_type,
    bool? is_outgoing,
    int? message_id,
    int? from_user_id,
    String? text,
    int? date,
    int? update_date,
    String? status,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _MessageLocalDatabaseUpdateImpl implements _MessageLocalDatabaseUpdate {
  const _MessageLocalDatabaseUpdateImpl(this.collection);

  final DatabaseUniverseCollection<int, MessageLocalDatabase> collection;

  @override
  bool call({
    required int id,
    Object? special_type = ignore,
    Object? is_outgoing = ignore,
    Object? message_id = ignore,
    Object? from_user_id = ignore,
    Object? text = ignore,
    Object? date = ignore,
    Object? update_date = ignore,
    Object? status = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (special_type != ignore) 1: special_type as String?,
          if (is_outgoing != ignore) 2: is_outgoing as bool?,
          if (message_id != ignore) 3: message_id as int?,
          if (from_user_id != ignore) 4: from_user_id as int?,
          if (text != ignore) 5: text as String?,
          if (date != ignore) 6: date as int?,
          if (update_date != ignore) 7: update_date as int?,
          if (status != ignore) 8: status as String?,
          if (from_app_id != ignore) 10: from_app_id as String?,
          if (owner_account_user_id != ignore)
            11: owner_account_user_id as int?,
        }) >
        0;
  }
}

sealed class _MessageLocalDatabaseUpdateAll {
  int call({
    required List<int> id,
    String? special_type,
    bool? is_outgoing,
    int? message_id,
    int? from_user_id,
    String? text,
    int? date,
    int? update_date,
    String? status,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _MessageLocalDatabaseUpdateAllImpl
    implements _MessageLocalDatabaseUpdateAll {
  const _MessageLocalDatabaseUpdateAllImpl(this.collection);

  final DatabaseUniverseCollection<int, MessageLocalDatabase> collection;

  @override
  int call({
    required List<int> id,
    Object? special_type = ignore,
    Object? is_outgoing = ignore,
    Object? message_id = ignore,
    Object? from_user_id = ignore,
    Object? text = ignore,
    Object? date = ignore,
    Object? update_date = ignore,
    Object? status = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return collection.updateProperties(id, {
      if (special_type != ignore) 1: special_type as String?,
      if (is_outgoing != ignore) 2: is_outgoing as bool?,
      if (message_id != ignore) 3: message_id as int?,
      if (from_user_id != ignore) 4: from_user_id as int?,
      if (text != ignore) 5: text as String?,
      if (date != ignore) 6: date as int?,
      if (update_date != ignore) 7: update_date as int?,
      if (status != ignore) 8: status as String?,
      if (from_app_id != ignore) 10: from_app_id as String?,
      if (owner_account_user_id != ignore) 11: owner_account_user_id as int?,
    });
  }
}

extension MessageLocalDatabaseUpdate
    on DatabaseUniverseCollection<int, MessageLocalDatabase> {
  _MessageLocalDatabaseUpdate get update =>
      _MessageLocalDatabaseUpdateImpl(this);

  _MessageLocalDatabaseUpdateAll get updateAll =>
      _MessageLocalDatabaseUpdateAllImpl(this);
}

sealed class _MessageLocalDatabaseQueryUpdate {
  int call({
    String? special_type,
    bool? is_outgoing,
    int? message_id,
    int? from_user_id,
    String? text,
    int? date,
    int? update_date,
    String? status,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _MessageLocalDatabaseQueryUpdateImpl
    implements _MessageLocalDatabaseQueryUpdate {
  const _MessageLocalDatabaseQueryUpdateImpl(this.query, {this.limit});

  final DatabaseUniverseQuery<MessageLocalDatabase> query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? is_outgoing = ignore,
    Object? message_id = ignore,
    Object? from_user_id = ignore,
    Object? text = ignore,
    Object? date = ignore,
    Object? update_date = ignore,
    Object? status = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (special_type != ignore) 1: special_type as String?,
      if (is_outgoing != ignore) 2: is_outgoing as bool?,
      if (message_id != ignore) 3: message_id as int?,
      if (from_user_id != ignore) 4: from_user_id as int?,
      if (text != ignore) 5: text as String?,
      if (date != ignore) 6: date as int?,
      if (update_date != ignore) 7: update_date as int?,
      if (status != ignore) 8: status as String?,
      if (from_app_id != ignore) 10: from_app_id as String?,
      if (owner_account_user_id != ignore) 11: owner_account_user_id as int?,
    });
  }
}

extension MessageLocalDatabaseQueryUpdate
    on DatabaseUniverseQuery<MessageLocalDatabase> {
  _MessageLocalDatabaseQueryUpdate get updateFirst =>
      _MessageLocalDatabaseQueryUpdateImpl(this, limit: 1);

  _MessageLocalDatabaseQueryUpdate get updateAll =>
      _MessageLocalDatabaseQueryUpdateImpl(this);
}

class _MessageLocalDatabaseQueryBuilderUpdateImpl
    implements _MessageLocalDatabaseQueryUpdate {
  const _MessageLocalDatabaseQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QOperations>
      query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? is_outgoing = ignore,
    Object? message_id = ignore,
    Object? from_user_id = ignore,
    Object? text = ignore,
    Object? date = ignore,
    Object? update_date = ignore,
    Object? status = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (special_type != ignore) 1: special_type as String?,
        if (is_outgoing != ignore) 2: is_outgoing as bool?,
        if (message_id != ignore) 3: message_id as int?,
        if (from_user_id != ignore) 4: from_user_id as int?,
        if (text != ignore) 5: text as String?,
        if (date != ignore) 6: date as int?,
        if (update_date != ignore) 7: update_date as int?,
        if (status != ignore) 8: status as String?,
        if (from_app_id != ignore) 10: from_app_id as String?,
        if (owner_account_user_id != ignore) 11: owner_account_user_id as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension MessageLocalDatabaseQueryBuilderUpdate
    on QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QOperations> {
  _MessageLocalDatabaseQueryUpdate get updateFirst =>
      _MessageLocalDatabaseQueryBuilderUpdateImpl(this, limit: 1);

  _MessageLocalDatabaseQueryUpdate get updateAll =>
      _MessageLocalDatabaseQueryBuilderUpdateImpl(this);
}

extension MessageLocalDatabaseQueryFilter on QueryBuilder<MessageLocalDatabase,
    MessageLocalDatabase, QFilterCondition> {
  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> is_outgoingEqualTo(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> message_idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> message_idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> message_idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> message_idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> message_idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> message_idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_user_idEqualTo(
    int value,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_user_idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_user_idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_user_idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_user_idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_user_idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> textEqualTo(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> textGreaterThan(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> textGreaterThanOrEqualTo(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> textLessThan(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> textLessThanOrEqualTo(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> textBetween(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> textStartsWith(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> textEndsWith(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
          QAfterFilterCondition>
      textContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
          QAfterFilterCondition>
      textMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> dateEqualTo(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> dateGreaterThan(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> dateGreaterThanOrEqualTo(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> dateLessThan(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> dateLessThanOrEqualTo(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> dateBetween(
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> update_dateEqualTo(
    int value,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> update_dateGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> update_dateGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> update_dateLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> update_dateLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> update_dateBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> statusGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> statusGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> statusLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> statusLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
          QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
          QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 8,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> chat_idsElementEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> chat_idsElementGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> chat_idsElementGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> chat_idsElementLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> chat_idsElementLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> chat_idsElementBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 9,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> chat_idsIsEmpty() {
    return not().chat_idsIsNotEmpty();
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> chat_idsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 9, value: null),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_app_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_app_idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_app_idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_app_idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_app_idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_app_idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 10,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_app_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_app_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
          QAfterFilterCondition>
      from_app_idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
          QAfterFilterCondition>
      from_app_idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 10,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_app_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> from_app_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> owner_account_user_idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> owner_account_user_idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 11,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> owner_account_user_idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 11,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> owner_account_user_idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 11,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> owner_account_user_idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 11,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
      QAfterFilterCondition> owner_account_user_idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 11,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase,
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

extension MessageLocalDatabaseQueryObject on QueryBuilder<MessageLocalDatabase,
    MessageLocalDatabase, QFilterCondition> {}

extension MessageLocalDatabaseQuerySortBy
    on QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QSortBy> {
  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortBySpecial_typeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByIs_outgoing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByIs_outgoingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByMessage_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByMessage_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByFrom_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByFrom_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByText({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByTextDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByUpdate_date() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByUpdate_dateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByStatusDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByFrom_app_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension MessageLocalDatabaseQuerySortThenBy
    on QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QSortThenBy> {
  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenBySpecial_typeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByIs_outgoing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByIs_outgoingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByMessage_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByMessage_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByFrom_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByFrom_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByText({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByTextDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByUpdate_date() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByUpdate_dateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByStatusDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByFrom_app_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension MessageLocalDatabaseQueryWhereDistinct
    on QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QDistinct> {
  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterDistinct>
      distinctBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterDistinct>
      distinctByIs_outgoing() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterDistinct>
      distinctByMessage_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterDistinct>
      distinctByFrom_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterDistinct>
      distinctByText({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterDistinct>
      distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterDistinct>
      distinctByUpdate_date() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterDistinct>
      distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterDistinct>
      distinctByChat_ids() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterDistinct>
      distinctByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QAfterDistinct>
      distinctByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(11);
    });
  }
}

extension MessageLocalDatabaseQueryProperty1
    on QueryBuilder<MessageLocalDatabase, MessageLocalDatabase, QProperty> {
  QueryBuilder<MessageLocalDatabase, String, QAfterProperty>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<MessageLocalDatabase, bool, QAfterProperty>
      is_outgoingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<MessageLocalDatabase, int, QAfterProperty> message_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<MessageLocalDatabase, int, QAfterProperty>
      from_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<MessageLocalDatabase, String, QAfterProperty> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<MessageLocalDatabase, int, QAfterProperty> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<MessageLocalDatabase, int, QAfterProperty>
      update_dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<MessageLocalDatabase, String, QAfterProperty> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<MessageLocalDatabase, List<int>, QAfterProperty>
      chat_idsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<MessageLocalDatabase, String, QAfterProperty>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<MessageLocalDatabase, int, QAfterProperty>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<MessageLocalDatabase, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension MessageLocalDatabaseQueryProperty2<R>
    on QueryBuilder<MessageLocalDatabase, R, QAfterProperty> {
  QueryBuilder<MessageLocalDatabase, (R, String), QAfterProperty>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R, bool), QAfterProperty>
      is_outgoingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R, int), QAfterProperty>
      message_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R, int), QAfterProperty>
      from_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R, String), QAfterProperty>
      textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R, int), QAfterProperty> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R, int), QAfterProperty>
      update_dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R, String), QAfterProperty>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R, List<int>), QAfterProperty>
      chat_idsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R, String), QAfterProperty>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R, int), QAfterProperty>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension MessageLocalDatabaseQueryProperty3<R1, R2>
    on QueryBuilder<MessageLocalDatabase, (R1, R2), QAfterProperty> {
  QueryBuilder<MessageLocalDatabase, (R1, R2, String), QOperations>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R1, R2, bool), QOperations>
      is_outgoingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R1, R2, int), QOperations>
      message_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R1, R2, int), QOperations>
      from_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R1, R2, String), QOperations>
      textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R1, R2, int), QOperations>
      dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R1, R2, int), QOperations>
      update_dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R1, R2, String), QOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R1, R2, List<int>), QOperations>
      chat_idsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R1, R2, String), QOperations>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R1, R2, int), QOperations>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<MessageLocalDatabase, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}
