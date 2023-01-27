// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listProsCons_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListProsConsDto _$$_ListProsConsDtoFromJson(Map<String, dynamic> json) =>
    _$_ListProsConsDto(
      title: json['title'] as String?,
      desc: json['desc'] as String?,
      namePros: json['namePros'] as String?,
      nameCons: json['nameCons'] as String?,
      status: json['status'] as int?,
      isPrivate: json['isPrivate'] as bool?,
      createDate: json['createDate'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
      listItemPros: (json['listItemPros'] as List<dynamic>?)
          ?.map((e) => ItemProsConsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      listItemCons: (json['listItemCons'] as List<dynamic>?)
          ?.map((e) => ItemProsConsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      collaborators: (json['collaborators'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      serverTimestamp: _$JsonConverterFromJson<Object, FieldValue>(
          json['serverTimestamp'], const ServerTimestampConverter().fromJson),
    );

Map<String, dynamic> _$$_ListProsConsDtoToJson(_$_ListProsConsDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
      'namePros': instance.namePros,
      'nameCons': instance.nameCons,
      'status': instance.status,
      'isPrivate': instance.isPrivate,
      'createDate': instance.createDate,
      'balance': instance.balance,
      'listItemPros': instance.listItemPros,
      'listItemCons': instance.listItemCons,
      'userId': instance.userId,
      'userName': instance.userName,
      'collaborators': instance.collaborators,
      'serverTimestamp': _$JsonConverterToJson<Object, FieldValue>(
          instance.serverTimestamp, const ServerTimestampConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$_ItemProsConsDto _$$_ItemProsConsDtoFromJson(Map<String, dynamic> json) =>
    _$_ItemProsConsDto(
      id: json['id'] as String?,
      title: json['title'] as String?,
      importance: json['importance'] as int?,
      createDate: json['createDate'] as String?,
      isPro: json['isPro'] as bool?,
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
    );

Map<String, dynamic> _$$_ItemProsConsDtoToJson(_$_ItemProsConsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'importance': instance.importance,
      'createDate': instance.createDate,
      'isPro': instance.isPro,
      'userId': instance.userId,
      'userName': instance.userName,
    };
