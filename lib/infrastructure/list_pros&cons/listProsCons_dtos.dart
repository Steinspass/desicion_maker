import 'package:desicion_maker_app/domain/core/value_objects.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/itemProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';
import 'package:desicion_maker_app/infrastructure/core/firestore_helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';


part 'listProsCons_dtos.freezed.dart';
part 'listProsCons_dtos.g.dart';


@freezed
abstract class ListProsConsDto with  _$ListProsConsDto{

factory ListProsConsDto({
  @JsonKey(ignore: true) String? id,
  @required String? title,
  @required String? desc,
  @required String? namePros,
  @required String? nameCons,
  @required int? status,
  @required bool? isPrivate,
  @required String? createDate,
  @required double? balance,
  @required List<ItemProsConsDto>? listItemPros,
  @required List<ItemProsConsDto>? listItemCons,
  @required String? userId,
  @required String? userName,
  @required List<String>? collaborators,
  @required @ServerTimestampConverter() FieldValue? serverTimestamp
}) = _ListProsConsDto;


  factory ListProsConsDto.fromDomain(ListProsCons listProsCons){
    return ListProsConsDto(
      id: listProsCons.id?.getOrCrash(), 
      title: listProsCons.title?.getOrCrash(), 
      desc: listProsCons.desc?.getOrCrash(), 
      namePros: listProsCons.namePros?.getOrCrash(), 
      nameCons: listProsCons.nameCons?.getOrCrash(), 
      status: listProsCons.status, 
      isPrivate: listProsCons.isPrivate, 
      createDate: listProsCons.createDate, 
      balance: listProsCons.balance,
      listItemPros: listProsCons.listItemPros?.getOrCrash().mapIndexed((index, p1) => ItemProsConsDto.fromDomain(p1)).asList(), 
      listItemCons: listProsCons.listItemCons?.getOrCrash().mapIndexed((index, p1) => ItemProsConsDto.fromDomain(p1)).asList(),  
      userId: listProsCons.userId, 
      userName: listProsCons.userName, 
      collaborators: listProsCons.collaborators,
      serverTimestamp: FieldValue.serverTimestamp()
    );
  }

  factory ListProsConsDto.fromJson(Map<String, dynamic> json) => _$ListProsConsDtoFromJson(json);


  factory ListProsConsDto.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> map = doc.data() as Map<String, dynamic>;

    return ListProsConsDto.fromJson(map).copyWith(id: doc.id);
  } 

}


extension ListProsConsDtoX on ListProsConsDto{

   

  ListProsCons toDomain(){
    
    // List<ItemProsConsDto>? itemsPros = 

    return ListProsCons(
      id: UniqueId.fromUniqueString(id!), 
      title: ListItemName(title!), 
      desc: ListItemDesc(desc!), 
      namePros: ListItemProsConsTitle(namePros!), 
      nameCons: ListItemProsConsTitle(nameCons!), 
      status: status, 
      isPrivate: isPrivate, 
      createDate: createDate, 
      balance: balance,
      listItemPros: List20(listItemPros!.map((dto) => dto.toDomain()).toImmutableList()), 
      listItemCons: List20(listItemCons!.map((dto) => dto.toDomain()).toImmutableList()), 
      userId: userId, 
      userName: userName, 
      collaborators: collaborators
    );
  }
}





class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}




@freezed
class ItemProsConsDto with _$ItemProsConsDto{

  const factory ItemProsConsDto({
    @required String? id,
    @required String? title,
    @required int? importance,
    @required String? createDate,
    @required bool? isPro,
    @required String? userId,
    @required String? userName, 
  }) = _ItemProsConsDto;

  factory ItemProsConsDto.fromDomain(ItemProsCons item){
    return ItemProsConsDto(
      id: item.id?.getOrCrash(), 
      title: item.title?.getOrCrash(), 
      importance: item.importance, 
      createDate: item.createDate, 
      isPro: item.isPro, 
      userId: item.userId, 
      userName: item.userName
    );
  }

  factory ItemProsConsDto.fromJson(Map<String, dynamic> json) => _$ItemProsConsDtoFromJson(json);

  factory ItemProsConsDto.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> map = doc.data() as Map<String, dynamic>;

    return ItemProsConsDto.fromJson(map).copyWith(id: doc.id);
  } 

}


extension ItemProsConsDtoX on ItemProsConsDto{

  ItemProsCons toDomain(){
    return ItemProsCons(
      id: UniqueId.fromUniqueString(id!), 
      title: ListItemName(title!), 
      importance: importance, 
      createDate: createDate, 
      isPro: isPro, 
      userId: userId, 
      userName: userName
    );
  }

}