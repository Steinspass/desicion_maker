import 'package:dartz/dartz.dart';
import 'package:desicion_maker_app/domain/core/entity.dart';
import 'package:desicion_maker_app/domain/core/failures.dart';
import 'package:desicion_maker_app/domain/core/value_objects.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/itemProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'listProsCons.freezed.dart';

 
@freezed 
abstract class ListProsCons with _$ListProsCons implements IEntity{
  

  const factory ListProsCons({
    @required UniqueId? id,
    @required ListItemName? title,
    @required ListItemDesc? desc,
    @required ListItemProsConsTitle? namePros,
    @required ListItemProsConsTitle? nameCons,
    @required int? status,
    @required bool? isPrivate,
    @required String? createDate,
    @required double? balance,
    @required List20<ItemProsCons>? listItemPros,
    @required List20<ItemProsCons>? listItemCons,
    @required String? userId,
    @required String? userName,
    @required List<String>? collaborators
  }) = _ListProsCons;

  factory ListProsCons.empty() => ListProsCons(
    id: UniqueId(), 
    title: ListItemName('Title'), 
    desc: ListItemDesc(''), 
    namePros: ListItemProsConsTitle('Pros'), 
    nameCons: ListItemProsConsTitle('Cons'), 
    status: StatusList.notdecide, 
    isPrivate: false, 
    createDate: '', 
    balance: 0,
    listItemPros: List20(emptyList()), 
    listItemCons: List20(emptyList()), 
    userId: '', 
    userName: '', 
    collaborators: []
  );

 }

 extension ListProsConsX on ListProsCons{
  Option<ValueFailure<dynamic>> get failureOption{
    return desc!.failureOrUnit
        .andThen(
          listItemPros!
          .getOrCrash()
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        
        )
        .andThen(
          listItemCons!
          .getOrCrash()
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold((f) => some(f), (_) => none());
  }
 }




