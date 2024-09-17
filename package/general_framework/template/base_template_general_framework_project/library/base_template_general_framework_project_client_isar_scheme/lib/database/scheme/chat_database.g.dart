// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_database.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetChatDatabaseCollection on Isar {
  IsarCollection<int, ChatDatabase> get chatDatabases => this.collection();
}

const ChatDatabaseSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'ChatDatabase',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'special_type',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'chat_ids',
        type: IsarType.longList,
      ),
      IsarPropertySchema(
        name: 'chat_unique_id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'from_app_id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'owner_account_user_id',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, ChatDatabase>(
    serialize: serializeChatDatabase,
    deserialize: deserializeChatDatabase,
    deserializeProperty: deserializeChatDatabaseProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeChatDatabase(IsarWriter writer, ChatDatabase object) {
  IsarCore.writeString(writer, 1, object.special_type);
  {
    final list = object.chat_ids;
    final listWriter = IsarCore.beginList(writer, 2, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeLong(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  IsarCore.writeString(writer, 3, object.chat_unique_id);
  IsarCore.writeString(writer, 4, object.from_app_id);
  IsarCore.writeLong(writer, 5, object.owner_account_user_id);
  return object.id;
}

@isarProtected
ChatDatabase deserializeChatDatabase(IsarReader reader) {
  final object = ChatDatabase();
  object.special_type = IsarCore.readString(reader, 1) ?? '';
  {
    final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        object.chat_ids = const <int>[];
      } else {
        final list =
            List<int>.filled(length, -9223372036854775808, growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readLong(reader, i);
        }
        IsarCore.freeReader(reader);
        object.chat_ids = list;
      }
    }
  }
  object.chat_unique_id = IsarCore.readString(reader, 3) ?? '';
  object.from_app_id = IsarCore.readString(reader, 4) ?? '';
  object.owner_account_user_id = IsarCore.readLong(reader, 5);
  object.id = IsarCore.readId(reader);
  return object;
}

@isarProtected
dynamic deserializeChatDatabaseProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      {
        final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <int>[];
          } else {
            final list =
                List<int>.filled(length, -9223372036854775808, growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readLong(reader, i);
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      return IsarCore.readLong(reader, 5);
    case 0:
      return IsarCore.readId(reader);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _ChatDatabaseUpdate {
  bool call({
    required int id,
    String? special_type,
    String? chat_unique_id,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _ChatDatabaseUpdateImpl implements _ChatDatabaseUpdate {
  const _ChatDatabaseUpdateImpl(this.collection);

  final IsarCollection<int, ChatDatabase> collection;

  @override
  bool call({
    required int id,
    Object? special_type = ignore,
    Object? chat_unique_id = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (special_type != ignore) 1: special_type as String?,
          if (chat_unique_id != ignore) 3: chat_unique_id as String?,
          if (from_app_id != ignore) 4: from_app_id as String?,
          if (owner_account_user_id != ignore) 5: owner_account_user_id as int?,
        }) >
        0;
  }
}

sealed class _ChatDatabaseUpdateAll {
  int call({
    required List<int> id,
    String? special_type,
    String? chat_unique_id,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _ChatDatabaseUpdateAllImpl implements _ChatDatabaseUpdateAll {
  const _ChatDatabaseUpdateAllImpl(this.collection);

  final IsarCollection<int, ChatDatabase> collection;

  @override
  int call({
    required List<int> id,
    Object? special_type = ignore,
    Object? chat_unique_id = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return collection.updateProperties(id, {
      if (special_type != ignore) 1: special_type as String?,
      if (chat_unique_id != ignore) 3: chat_unique_id as String?,
      if (from_app_id != ignore) 4: from_app_id as String?,
      if (owner_account_user_id != ignore) 5: owner_account_user_id as int?,
    });
  }
}

extension ChatDatabaseUpdate on IsarCollection<int, ChatDatabase> {
  _ChatDatabaseUpdate get update => _ChatDatabaseUpdateImpl(this);

  _ChatDatabaseUpdateAll get updateAll => _ChatDatabaseUpdateAllImpl(this);
}

sealed class _ChatDatabaseQueryUpdate {
  int call({
    String? special_type,
    String? chat_unique_id,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _ChatDatabaseQueryUpdateImpl implements _ChatDatabaseQueryUpdate {
  const _ChatDatabaseQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<ChatDatabase> query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? chat_unique_id = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (special_type != ignore) 1: special_type as String?,
      if (chat_unique_id != ignore) 3: chat_unique_id as String?,
      if (from_app_id != ignore) 4: from_app_id as String?,
      if (owner_account_user_id != ignore) 5: owner_account_user_id as int?,
    });
  }
}

extension ChatDatabaseQueryUpdate on IsarQuery<ChatDatabase> {
  _ChatDatabaseQueryUpdate get updateFirst =>
      _ChatDatabaseQueryUpdateImpl(this, limit: 1);

  _ChatDatabaseQueryUpdate get updateAll => _ChatDatabaseQueryUpdateImpl(this);
}

class _ChatDatabaseQueryBuilderUpdateImpl implements _ChatDatabaseQueryUpdate {
  const _ChatDatabaseQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<ChatDatabase, ChatDatabase, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? chat_unique_id = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (special_type != ignore) 1: special_type as String?,
        if (chat_unique_id != ignore) 3: chat_unique_id as String?,
        if (from_app_id != ignore) 4: from_app_id as String?,
        if (owner_account_user_id != ignore) 5: owner_account_user_id as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension ChatDatabaseQueryBuilderUpdate
    on QueryBuilder<ChatDatabase, ChatDatabase, QOperations> {
  _ChatDatabaseQueryUpdate get updateFirst =>
      _ChatDatabaseQueryBuilderUpdateImpl(this, limit: 1);

  _ChatDatabaseQueryUpdate get updateAll =>
      _ChatDatabaseQueryBuilderUpdateImpl(this);
}

extension ChatDatabaseQueryFilter
    on QueryBuilder<ChatDatabase, ChatDatabase, QFilterCondition> {
  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      special_typeEqualTo(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      special_typeGreaterThan(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      special_typeGreaterThanOrEqualTo(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      special_typeLessThan(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      special_typeLessThanOrEqualTo(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      special_typeBetween(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      special_typeStartsWith(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      special_typeEndsWith(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      special_typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      special_typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_idsElementEqualTo(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_idsElementGreaterThan(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_idsElementGreaterThanOrEqualTo(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_idsElementLessThan(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_idsElementLessThanOrEqualTo(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_idsElementBetween(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_idsIsEmpty() {
    return not().chat_idsIsNotEmpty();
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_idsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 2, value: null),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_unique_idEqualTo(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_unique_idGreaterThan(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_unique_idGreaterThanOrEqualTo(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_unique_idLessThan(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_unique_idLessThanOrEqualTo(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_unique_idBetween(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_unique_idStartsWith(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_unique_idEndsWith(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_unique_idContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_unique_idMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_unique_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      chat_unique_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      from_app_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      from_app_idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      from_app_idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      from_app_idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      from_app_idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      from_app_idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      from_app_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      from_app_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      from_app_idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      from_app_idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      from_app_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      from_app_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      owner_account_user_idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      owner_account_user_idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      owner_account_user_idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      owner_account_user_idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      owner_account_user_idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      owner_account_user_idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition>
      idLessThanOrEqualTo(
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

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterFilterCondition> idBetween(
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

extension ChatDatabaseQueryObject
    on QueryBuilder<ChatDatabase, ChatDatabase, QFilterCondition> {}

extension ChatDatabaseQuerySortBy
    on QueryBuilder<ChatDatabase, ChatDatabase, QSortBy> {
  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> sortBySpecial_type(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> sortBySpecial_typeDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> sortByChat_unique_id(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy>
      sortByChat_unique_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> sortByFrom_app_id(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> sortByFrom_app_idDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy>
      sortByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy>
      sortByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension ChatDatabaseQuerySortThenBy
    on QueryBuilder<ChatDatabase, ChatDatabase, QSortThenBy> {
  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> thenBySpecial_type(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> thenBySpecial_typeDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> thenByChat_unique_id(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy>
      thenByChat_unique_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> thenByFrom_app_id(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> thenByFrom_app_idDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy>
      thenByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy>
      thenByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension ChatDatabaseQueryWhereDistinct
    on QueryBuilder<ChatDatabase, ChatDatabase, QDistinct> {
  QueryBuilder<ChatDatabase, ChatDatabase, QAfterDistinct>
      distinctBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterDistinct>
      distinctByChat_ids() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterDistinct>
      distinctByChat_unique_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterDistinct>
      distinctByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatDatabase, ChatDatabase, QAfterDistinct>
      distinctByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension ChatDatabaseQueryProperty1
    on QueryBuilder<ChatDatabase, ChatDatabase, QProperty> {
  QueryBuilder<ChatDatabase, String, QAfterProperty> special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ChatDatabase, List<int>, QAfterProperty> chat_idsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ChatDatabase, String, QAfterProperty> chat_unique_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ChatDatabase, String, QAfterProperty> from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ChatDatabase, int, QAfterProperty>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ChatDatabase, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension ChatDatabaseQueryProperty2<R>
    on QueryBuilder<ChatDatabase, R, QAfterProperty> {
  QueryBuilder<ChatDatabase, (R, String), QAfterProperty>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ChatDatabase, (R, List<int>), QAfterProperty>
      chat_idsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ChatDatabase, (R, String), QAfterProperty>
      chat_unique_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ChatDatabase, (R, String), QAfterProperty>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ChatDatabase, (R, int), QAfterProperty>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ChatDatabase, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension ChatDatabaseQueryProperty3<R1, R2>
    on QueryBuilder<ChatDatabase, (R1, R2), QAfterProperty> {
  QueryBuilder<ChatDatabase, (R1, R2, String), QOperations>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ChatDatabase, (R1, R2, List<int>), QOperations>
      chat_idsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ChatDatabase, (R1, R2, String), QOperations>
      chat_unique_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ChatDatabase, (R1, R2, String), QOperations>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ChatDatabase, (R1, R2, int), QOperations>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ChatDatabase, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}
