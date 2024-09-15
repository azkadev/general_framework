// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_database.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetMessageDatabaseCollection on Isar {
  IsarCollection<int, MessageDatabase> get messageDatabases =>
      this.collection();
}

const MessageDatabaseSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'MessageDatabase',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'special_type',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'message_id',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'from_user_id',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'text',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'date',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'update_date',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'chat_ids',
        type: IsarType.longList,
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
  converter: IsarObjectConverter<int, MessageDatabase>(
    serialize: serializeMessageDatabase,
    deserialize: deserializeMessageDatabase,
    deserializeProperty: deserializeMessageDatabaseProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeMessageDatabase(IsarWriter writer, MessageDatabase object) {
  IsarCore.writeString(writer, 1, object.special_type);
  IsarCore.writeLong(writer, 2, object.message_id);
  IsarCore.writeLong(writer, 3, object.from_user_id);
  IsarCore.writeString(writer, 4, object.text);
  IsarCore.writeLong(writer, 5, object.date);
  IsarCore.writeLong(writer, 6, object.update_date);
  {
    final list = object.chat_ids;
    final listWriter = IsarCore.beginList(writer, 7, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeLong(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  IsarCore.writeString(writer, 8, object.from_app_id);
  IsarCore.writeLong(writer, 9, object.owner_account_user_id);
  return object.id;
}

@isarProtected
MessageDatabase deserializeMessageDatabase(IsarReader reader) {
  final object = MessageDatabase();
  object.special_type = IsarCore.readString(reader, 1) ?? '';
  object.message_id = IsarCore.readLong(reader, 2);
  object.from_user_id = IsarCore.readLong(reader, 3);
  object.text = IsarCore.readString(reader, 4) ?? '';
  object.date = IsarCore.readLong(reader, 5);
  object.update_date = IsarCore.readLong(reader, 6);
  {
    final length = IsarCore.readList(reader, 7, IsarCore.readerPtrPtr);
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
  object.from_app_id = IsarCore.readString(reader, 8) ?? '';
  object.owner_account_user_id = IsarCore.readLong(reader, 9);
  object.id = IsarCore.readId(reader);
  return object;
}

@isarProtected
dynamic deserializeMessageDatabaseProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readLong(reader, 2);
    case 3:
      return IsarCore.readLong(reader, 3);
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      return IsarCore.readLong(reader, 5);
    case 6:
      return IsarCore.readLong(reader, 6);
    case 7:
      {
        final length = IsarCore.readList(reader, 7, IsarCore.readerPtrPtr);
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
    case 8:
      return IsarCore.readString(reader, 8) ?? '';
    case 9:
      return IsarCore.readLong(reader, 9);
    case 0:
      return IsarCore.readId(reader);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _MessageDatabaseUpdate {
  bool call({
    required int id,
    String? special_type,
    int? message_id,
    int? from_user_id,
    String? text,
    int? date,
    int? update_date,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _MessageDatabaseUpdateImpl implements _MessageDatabaseUpdate {
  const _MessageDatabaseUpdateImpl(this.collection);

  final IsarCollection<int, MessageDatabase> collection;

  @override
  bool call({
    required int id,
    Object? special_type = ignore,
    Object? message_id = ignore,
    Object? from_user_id = ignore,
    Object? text = ignore,
    Object? date = ignore,
    Object? update_date = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (special_type != ignore) 1: special_type as String?,
          if (message_id != ignore) 2: message_id as int?,
          if (from_user_id != ignore) 3: from_user_id as int?,
          if (text != ignore) 4: text as String?,
          if (date != ignore) 5: date as int?,
          if (update_date != ignore) 6: update_date as int?,
          if (from_app_id != ignore) 8: from_app_id as String?,
          if (owner_account_user_id != ignore) 9: owner_account_user_id as int?,
        }) >
        0;
  }
}

sealed class _MessageDatabaseUpdateAll {
  int call({
    required List<int> id,
    String? special_type,
    int? message_id,
    int? from_user_id,
    String? text,
    int? date,
    int? update_date,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _MessageDatabaseUpdateAllImpl implements _MessageDatabaseUpdateAll {
  const _MessageDatabaseUpdateAllImpl(this.collection);

  final IsarCollection<int, MessageDatabase> collection;

  @override
  int call({
    required List<int> id,
    Object? special_type = ignore,
    Object? message_id = ignore,
    Object? from_user_id = ignore,
    Object? text = ignore,
    Object? date = ignore,
    Object? update_date = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return collection.updateProperties(id, {
      if (special_type != ignore) 1: special_type as String?,
      if (message_id != ignore) 2: message_id as int?,
      if (from_user_id != ignore) 3: from_user_id as int?,
      if (text != ignore) 4: text as String?,
      if (date != ignore) 5: date as int?,
      if (update_date != ignore) 6: update_date as int?,
      if (from_app_id != ignore) 8: from_app_id as String?,
      if (owner_account_user_id != ignore) 9: owner_account_user_id as int?,
    });
  }
}

extension MessageDatabaseUpdate on IsarCollection<int, MessageDatabase> {
  _MessageDatabaseUpdate get update => _MessageDatabaseUpdateImpl(this);

  _MessageDatabaseUpdateAll get updateAll =>
      _MessageDatabaseUpdateAllImpl(this);
}

sealed class _MessageDatabaseQueryUpdate {
  int call({
    String? special_type,
    int? message_id,
    int? from_user_id,
    String? text,
    int? date,
    int? update_date,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _MessageDatabaseQueryUpdateImpl implements _MessageDatabaseQueryUpdate {
  const _MessageDatabaseQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<MessageDatabase> query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? message_id = ignore,
    Object? from_user_id = ignore,
    Object? text = ignore,
    Object? date = ignore,
    Object? update_date = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (special_type != ignore) 1: special_type as String?,
      if (message_id != ignore) 2: message_id as int?,
      if (from_user_id != ignore) 3: from_user_id as int?,
      if (text != ignore) 4: text as String?,
      if (date != ignore) 5: date as int?,
      if (update_date != ignore) 6: update_date as int?,
      if (from_app_id != ignore) 8: from_app_id as String?,
      if (owner_account_user_id != ignore) 9: owner_account_user_id as int?,
    });
  }
}

extension MessageDatabaseQueryUpdate on IsarQuery<MessageDatabase> {
  _MessageDatabaseQueryUpdate get updateFirst =>
      _MessageDatabaseQueryUpdateImpl(this, limit: 1);

  _MessageDatabaseQueryUpdate get updateAll =>
      _MessageDatabaseQueryUpdateImpl(this);
}

class _MessageDatabaseQueryBuilderUpdateImpl
    implements _MessageDatabaseQueryUpdate {
  const _MessageDatabaseQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<MessageDatabase, MessageDatabase, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? message_id = ignore,
    Object? from_user_id = ignore,
    Object? text = ignore,
    Object? date = ignore,
    Object? update_date = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (special_type != ignore) 1: special_type as String?,
        if (message_id != ignore) 2: message_id as int?,
        if (from_user_id != ignore) 3: from_user_id as int?,
        if (text != ignore) 4: text as String?,
        if (date != ignore) 5: date as int?,
        if (update_date != ignore) 6: update_date as int?,
        if (from_app_id != ignore) 8: from_app_id as String?,
        if (owner_account_user_id != ignore) 9: owner_account_user_id as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension MessageDatabaseQueryBuilderUpdate
    on QueryBuilder<MessageDatabase, MessageDatabase, QOperations> {
  _MessageDatabaseQueryUpdate get updateFirst =>
      _MessageDatabaseQueryBuilderUpdateImpl(this, limit: 1);

  _MessageDatabaseQueryUpdate get updateAll =>
      _MessageDatabaseQueryBuilderUpdateImpl(this);
}

extension MessageDatabaseQueryFilter
    on QueryBuilder<MessageDatabase, MessageDatabase, QFilterCondition> {
  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      message_idEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      message_idGreaterThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      message_idGreaterThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      message_idLessThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      message_idLessThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      message_idBetween(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_user_idEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_user_idGreaterThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_user_idGreaterThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_user_idLessThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_user_idLessThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_user_idBetween(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      textEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      textGreaterThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      textGreaterThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      textLessThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      textLessThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      textBetween(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      textStartsWith(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      textEndsWith(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      textContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      textMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      dateEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      dateGreaterThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      dateGreaterThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      dateLessThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      dateLessThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      dateBetween(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      update_dateEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      update_dateGreaterThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      update_dateGreaterThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      update_dateLessThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      update_dateLessThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      update_dateBetween(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      chat_idsElementEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      chat_idsElementGreaterThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      chat_idsElementGreaterThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      chat_idsElementLessThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      chat_idsElementLessThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      chat_idsElementBetween(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      chat_idsIsEmpty() {
    return not().chat_idsIsNotEmpty();
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      chat_idsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 7, value: null),
      );
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_app_idEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_app_idGreaterThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_app_idGreaterThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_app_idLessThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_app_idLessThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_app_idBetween(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_app_idStartsWith(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_app_idEndsWith(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_app_idContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_app_idMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_app_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      from_app_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      owner_account_user_idEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      owner_account_user_idGreaterThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      owner_account_user_idGreaterThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      owner_account_user_idLessThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      owner_account_user_idLessThanOrEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      owner_account_user_idBetween(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      idEqualTo(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
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

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterFilterCondition>
      idBetween(
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

extension MessageDatabaseQueryObject
    on QueryBuilder<MessageDatabase, MessageDatabase, QFilterCondition> {}

extension MessageDatabaseQuerySortBy
    on QueryBuilder<MessageDatabase, MessageDatabase, QSortBy> {
  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortBySpecial_typeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortByMessage_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortByMessage_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortByFrom_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortByFrom_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy> sortByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy> sortByTextDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortByUpdate_date() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortByUpdate_dateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortByFrom_app_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      sortByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension MessageDatabaseQuerySortThenBy
    on QueryBuilder<MessageDatabase, MessageDatabase, QSortThenBy> {
  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenBySpecial_typeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenByMessage_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenByMessage_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenByFrom_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenByFrom_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy> thenByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy> thenByTextDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenByUpdate_date() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenByUpdate_dateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenByFrom_app_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy>
      thenByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension MessageDatabaseQueryWhereDistinct
    on QueryBuilder<MessageDatabase, MessageDatabase, QDistinct> {
  QueryBuilder<MessageDatabase, MessageDatabase, QAfterDistinct>
      distinctBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterDistinct>
      distinctByMessage_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterDistinct>
      distinctByFrom_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterDistinct> distinctByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterDistinct>
      distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterDistinct>
      distinctByUpdate_date() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterDistinct>
      distinctByChat_ids() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterDistinct>
      distinctByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageDatabase, MessageDatabase, QAfterDistinct>
      distinctByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9);
    });
  }
}

extension MessageDatabaseQueryProperty1
    on QueryBuilder<MessageDatabase, MessageDatabase, QProperty> {
  QueryBuilder<MessageDatabase, String, QAfterProperty> special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<MessageDatabase, int, QAfterProperty> message_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<MessageDatabase, int, QAfterProperty> from_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<MessageDatabase, String, QAfterProperty> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<MessageDatabase, int, QAfterProperty> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<MessageDatabase, int, QAfterProperty> update_dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<MessageDatabase, List<int>, QAfterProperty> chat_idsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<MessageDatabase, String, QAfterProperty> from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<MessageDatabase, int, QAfterProperty>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<MessageDatabase, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension MessageDatabaseQueryProperty2<R>
    on QueryBuilder<MessageDatabase, R, QAfterProperty> {
  QueryBuilder<MessageDatabase, (R, String), QAfterProperty>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<MessageDatabase, (R, int), QAfterProperty> message_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<MessageDatabase, (R, int), QAfterProperty>
      from_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<MessageDatabase, (R, String), QAfterProperty> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<MessageDatabase, (R, int), QAfterProperty> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<MessageDatabase, (R, int), QAfterProperty>
      update_dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<MessageDatabase, (R, List<int>), QAfterProperty>
      chat_idsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<MessageDatabase, (R, String), QAfterProperty>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<MessageDatabase, (R, int), QAfterProperty>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<MessageDatabase, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension MessageDatabaseQueryProperty3<R1, R2>
    on QueryBuilder<MessageDatabase, (R1, R2), QAfterProperty> {
  QueryBuilder<MessageDatabase, (R1, R2, String), QOperations>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<MessageDatabase, (R1, R2, int), QOperations>
      message_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<MessageDatabase, (R1, R2, int), QOperations>
      from_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<MessageDatabase, (R1, R2, String), QOperations> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<MessageDatabase, (R1, R2, int), QOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<MessageDatabase, (R1, R2, int), QOperations>
      update_dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<MessageDatabase, (R1, R2, List<int>), QOperations>
      chat_idsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<MessageDatabase, (R1, R2, String), QOperations>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<MessageDatabase, (R1, R2, int), QOperations>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<MessageDatabase, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}
