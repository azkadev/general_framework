// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_database.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetAccountDatabaseCollection on Isar {
  IsarCollection<int, AccountDatabase> get accountDatabases =>
      this.collection();
}

const AccountDatabaseSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'AccountDatabase',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'special_type',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'first_name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'last_name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'username',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'bio',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'password',
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
  converter: IsarObjectConverter<int, AccountDatabase>(
    serialize: serializeAccountDatabase,
    deserialize: deserializeAccountDatabase,
    deserializeProperty: deserializeAccountDatabaseProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeAccountDatabase(IsarWriter writer, AccountDatabase object) {
  IsarCore.writeString(writer, 1, object.special_type);
  IsarCore.writeString(writer, 2, object.first_name);
  IsarCore.writeString(writer, 3, object.last_name);
  IsarCore.writeString(writer, 4, object.username);
  IsarCore.writeString(writer, 5, object.bio);
  IsarCore.writeString(writer, 6, object.password);
  IsarCore.writeString(writer, 7, object.from_app_id);
  IsarCore.writeLong(writer, 8, object.owner_account_user_id);
  return object.id;
}

@isarProtected
AccountDatabase deserializeAccountDatabase(IsarReader reader) {
  final object = AccountDatabase();
  object.special_type = IsarCore.readString(reader, 1) ?? '';
  object.id = IsarCore.readId(reader);
  object.first_name = IsarCore.readString(reader, 2) ?? '';
  object.last_name = IsarCore.readString(reader, 3) ?? '';
  object.username = IsarCore.readString(reader, 4) ?? '';
  object.bio = IsarCore.readString(reader, 5) ?? '';
  object.password = IsarCore.readString(reader, 6) ?? '';
  object.from_app_id = IsarCore.readString(reader, 7) ?? '';
  object.owner_account_user_id = IsarCore.readLong(reader, 8);
  return object;
}

@isarProtected
dynamic deserializeAccountDatabaseProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 0:
      return IsarCore.readId(reader);
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      return IsarCore.readString(reader, 5) ?? '';
    case 6:
      return IsarCore.readString(reader, 6) ?? '';
    case 7:
      return IsarCore.readString(reader, 7) ?? '';
    case 8:
      return IsarCore.readLong(reader, 8);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _AccountDatabaseUpdate {
  bool call({
    required int id,
    String? special_type,
    String? first_name,
    String? last_name,
    String? username,
    String? bio,
    String? password,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _AccountDatabaseUpdateImpl implements _AccountDatabaseUpdate {
  const _AccountDatabaseUpdateImpl(this.collection);

  final IsarCollection<int, AccountDatabase> collection;

  @override
  bool call({
    required int id,
    Object? special_type = ignore,
    Object? first_name = ignore,
    Object? last_name = ignore,
    Object? username = ignore,
    Object? bio = ignore,
    Object? password = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (special_type != ignore) 1: special_type as String?,
          if (first_name != ignore) 2: first_name as String?,
          if (last_name != ignore) 3: last_name as String?,
          if (username != ignore) 4: username as String?,
          if (bio != ignore) 5: bio as String?,
          if (password != ignore) 6: password as String?,
          if (from_app_id != ignore) 7: from_app_id as String?,
          if (owner_account_user_id != ignore) 8: owner_account_user_id as int?,
        }) >
        0;
  }
}

sealed class _AccountDatabaseUpdateAll {
  int call({
    required List<int> id,
    String? special_type,
    String? first_name,
    String? last_name,
    String? username,
    String? bio,
    String? password,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _AccountDatabaseUpdateAllImpl implements _AccountDatabaseUpdateAll {
  const _AccountDatabaseUpdateAllImpl(this.collection);

  final IsarCollection<int, AccountDatabase> collection;

  @override
  int call({
    required List<int> id,
    Object? special_type = ignore,
    Object? first_name = ignore,
    Object? last_name = ignore,
    Object? username = ignore,
    Object? bio = ignore,
    Object? password = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return collection.updateProperties(id, {
      if (special_type != ignore) 1: special_type as String?,
      if (first_name != ignore) 2: first_name as String?,
      if (last_name != ignore) 3: last_name as String?,
      if (username != ignore) 4: username as String?,
      if (bio != ignore) 5: bio as String?,
      if (password != ignore) 6: password as String?,
      if (from_app_id != ignore) 7: from_app_id as String?,
      if (owner_account_user_id != ignore) 8: owner_account_user_id as int?,
    });
  }
}

extension AccountDatabaseUpdate on IsarCollection<int, AccountDatabase> {
  _AccountDatabaseUpdate get update => _AccountDatabaseUpdateImpl(this);

  _AccountDatabaseUpdateAll get updateAll =>
      _AccountDatabaseUpdateAllImpl(this);
}

sealed class _AccountDatabaseQueryUpdate {
  int call({
    String? special_type,
    String? first_name,
    String? last_name,
    String? username,
    String? bio,
    String? password,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _AccountDatabaseQueryUpdateImpl implements _AccountDatabaseQueryUpdate {
  const _AccountDatabaseQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<AccountDatabase> query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? first_name = ignore,
    Object? last_name = ignore,
    Object? username = ignore,
    Object? bio = ignore,
    Object? password = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (special_type != ignore) 1: special_type as String?,
      if (first_name != ignore) 2: first_name as String?,
      if (last_name != ignore) 3: last_name as String?,
      if (username != ignore) 4: username as String?,
      if (bio != ignore) 5: bio as String?,
      if (password != ignore) 6: password as String?,
      if (from_app_id != ignore) 7: from_app_id as String?,
      if (owner_account_user_id != ignore) 8: owner_account_user_id as int?,
    });
  }
}

extension AccountDatabaseQueryUpdate on IsarQuery<AccountDatabase> {
  _AccountDatabaseQueryUpdate get updateFirst =>
      _AccountDatabaseQueryUpdateImpl(this, limit: 1);

  _AccountDatabaseQueryUpdate get updateAll =>
      _AccountDatabaseQueryUpdateImpl(this);
}

class _AccountDatabaseQueryBuilderUpdateImpl
    implements _AccountDatabaseQueryUpdate {
  const _AccountDatabaseQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<AccountDatabase, AccountDatabase, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? first_name = ignore,
    Object? last_name = ignore,
    Object? username = ignore,
    Object? bio = ignore,
    Object? password = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (special_type != ignore) 1: special_type as String?,
        if (first_name != ignore) 2: first_name as String?,
        if (last_name != ignore) 3: last_name as String?,
        if (username != ignore) 4: username as String?,
        if (bio != ignore) 5: bio as String?,
        if (password != ignore) 6: password as String?,
        if (from_app_id != ignore) 7: from_app_id as String?,
        if (owner_account_user_id != ignore) 8: owner_account_user_id as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension AccountDatabaseQueryBuilderUpdate
    on QueryBuilder<AccountDatabase, AccountDatabase, QOperations> {
  _AccountDatabaseQueryUpdate get updateFirst =>
      _AccountDatabaseQueryBuilderUpdateImpl(this, limit: 1);

  _AccountDatabaseQueryUpdate get updateAll =>
      _AccountDatabaseQueryBuilderUpdateImpl(this);
}

extension AccountDatabaseQueryFilter
    on QueryBuilder<AccountDatabase, AccountDatabase, QFilterCondition> {
  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      first_nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      first_nameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      first_nameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      first_nameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      first_nameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      first_nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      first_nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      first_nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      first_nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      first_nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      first_nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      first_nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      last_nameEqualTo(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      last_nameGreaterThan(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      last_nameGreaterThanOrEqualTo(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      last_nameLessThan(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      last_nameLessThanOrEqualTo(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      last_nameBetween(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      last_nameStartsWith(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      last_nameEndsWith(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      last_nameContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      last_nameMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      last_nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      last_nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      usernameEqualTo(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      usernameGreaterThan(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      usernameGreaterThanOrEqualTo(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      usernameLessThan(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      usernameLessThanOrEqualTo(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      usernameBetween(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      usernameStartsWith(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      usernameEndsWith(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      usernameContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      usernameMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      bioEqualTo(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      bioGreaterThan(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      bioGreaterThanOrEqualTo(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      bioLessThan(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      bioLessThanOrEqualTo(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      bioBetween(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      bioStartsWith(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      bioEndsWith(
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      bioContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      bioMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      bioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      bioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      passwordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      passwordGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      passwordGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      passwordLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      passwordLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      passwordBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      passwordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      passwordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      passwordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      passwordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 6,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 7,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      owner_account_user_idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      owner_account_user_idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      owner_account_user_idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      owner_account_user_idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      owner_account_user_idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      owner_account_user_idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension AccountDatabaseQueryObject
    on QueryBuilder<AccountDatabase, AccountDatabase, QFilterCondition> {}

extension AccountDatabaseQuerySortBy
    on QueryBuilder<AccountDatabase, AccountDatabase, QSortBy> {
  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortBySpecial_typeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> sortByFirst_name(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortByFirst_nameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> sortByLast_name(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortByLast_nameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> sortByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortByUsernameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> sortByBio(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> sortByBioDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> sortByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortByPasswordDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortByFrom_app_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }
}

extension AccountDatabaseQuerySortThenBy
    on QueryBuilder<AccountDatabase, AccountDatabase, QSortThenBy> {
  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenBySpecial_typeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> thenByFirst_name(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenByFirst_nameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> thenByLast_name(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenByLast_nameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> thenByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenByUsernameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> thenByBio(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> thenByBioDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> thenByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenByPasswordDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenByFrom_app_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }
}

extension AccountDatabaseQueryWhereDistinct
    on QueryBuilder<AccountDatabase, AccountDatabase, QDistinct> {
  QueryBuilder<AccountDatabase, AccountDatabase, QAfterDistinct>
      distinctBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterDistinct>
      distinctByFirst_name({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterDistinct>
      distinctByLast_name({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterDistinct>
      distinctByUsername({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterDistinct> distinctByBio(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterDistinct>
      distinctByPassword({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterDistinct>
      distinctByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterDistinct>
      distinctByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8);
    });
  }
}

extension AccountDatabaseQueryProperty1
    on QueryBuilder<AccountDatabase, AccountDatabase, QProperty> {
  QueryBuilder<AccountDatabase, String, QAfterProperty> special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<AccountDatabase, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<AccountDatabase, String, QAfterProperty> first_nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<AccountDatabase, String, QAfterProperty> last_nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<AccountDatabase, String, QAfterProperty> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<AccountDatabase, String, QAfterProperty> bioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<AccountDatabase, String, QAfterProperty> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<AccountDatabase, String, QAfterProperty> from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<AccountDatabase, int, QAfterProperty>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }
}

extension AccountDatabaseQueryProperty2<R>
    on QueryBuilder<AccountDatabase, R, QAfterProperty> {
  QueryBuilder<AccountDatabase, (R, String), QAfterProperty>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<AccountDatabase, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<AccountDatabase, (R, String), QAfterProperty>
      first_nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<AccountDatabase, (R, String), QAfterProperty>
      last_nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<AccountDatabase, (R, String), QAfterProperty>
      usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<AccountDatabase, (R, String), QAfterProperty> bioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<AccountDatabase, (R, String), QAfterProperty>
      passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<AccountDatabase, (R, String), QAfterProperty>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<AccountDatabase, (R, int), QAfterProperty>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }
}

extension AccountDatabaseQueryProperty3<R1, R2>
    on QueryBuilder<AccountDatabase, (R1, R2), QAfterProperty> {
  QueryBuilder<AccountDatabase, (R1, R2, String), QOperations>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<AccountDatabase, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<AccountDatabase, (R1, R2, String), QOperations>
      first_nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<AccountDatabase, (R1, R2, String), QOperations>
      last_nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<AccountDatabase, (R1, R2, String), QOperations>
      usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<AccountDatabase, (R1, R2, String), QOperations> bioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<AccountDatabase, (R1, R2, String), QOperations>
      passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<AccountDatabase, (R1, R2, String), QOperations>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<AccountDatabase, (R1, R2, int), QOperations>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }
}
