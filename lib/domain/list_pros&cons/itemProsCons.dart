import 'package:dartz/dartz.dart';
import 'package:desicion_maker_app/domain/core/entity.dart';
import 'package:desicion_maker_app/domain/core/failures.dart';
import 'package:desicion_maker_app/domain/core/value_objects.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'itemProsCons.freezed.dart';


@freezed 
class ItemProsCons with _$ItemProsCons implements IEntity{

  const factory ItemProsCons({
    @required UniqueId? id,
    @required ListItemName? title,
    @required int? importance,
    @required String? createDate,
    @required bool? isPro,
    @required String? userId,
    @required String? userName, 
  }) = _ItemProsCons;

  factory ItemProsCons.empty() => ItemProsCons(
    id: UniqueId(), 
    title: ListItemName('Title'), 
    importance: 0, 
    createDate: '', 
    isPro: true, 
    userId: '', 
    userName: ''
    );

}


extension ItemProsConsX on ItemProsCons{
  Option<ValueFailure<dynamic>> get failureOption{

    return title!.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}