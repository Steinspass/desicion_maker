import 'package:dartz/dartz.dart';
import 'package:desicion_maker_app/domain/core/value_objects.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/i_prosCons_repository.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons_failure.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/itemProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/value_objects.dart';
import 'package:desicion_maker_app/infrastructure/core/firestore_helpers.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/infrastructure/list_pros&cons/listProsCons_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';



@prod
@LazySingleton(as: IProsConsRepository)
 class ProsConsRepository implements IProsConsRepository{
  
  final FirebaseFirestore _firestore;

  ProsConsRepository(this._firestore);
  
  

  @override
  Stream<Either<ListProsConsFailure, KtList<ListProsCons>>> watchAll() async* {
    print('--- LISTPROSCONS REPOSITORY = watchAll BEGIN --- ');

    final userDoc = await _firestore.userDocument();

    print('--- LISTPROSCONS REPOSITORY = watchAll GET userDoc --- ');

    yield* userDoc.listProsConsCollection
      .orderBy('serverTimestamp', descending: true)
      .snapshots()
      .map(
        (snapshot) => right<ListProsConsFailure, KtList<ListProsCons>>(
          snapshot.docs.map((doc) {
            print('--- LISTPROSCONS REPOSITORY = watchAll --- ');
            return ListProsConsDto
              .fromFirestore(doc)
              .toDomain();
          } 
          ).toImmutableList()
        ),
      ).onErrorReturnWith(
        (error, stackTrace){
          if(error is PlatformException && error.message!.contains('PERMISSION_DENIED')){
            print('--- LISTPROSCONS REPOSITORY = OnErrorReturnWith => $error --- ');
            return left(const ListProsConsFailure.insufficientPermissions());

          }else{
            print('--- LISTPROSCONS REPOSITORY = OnErrorReturnWith => $error --- ');
            return left(const ListProsConsFailure.unexpected());
          }
        } 
      );

  }


  @override
  Stream<Either<ListProsConsFailure, KtList<ListProsCons>>> watchOnlyCons() async* {
   
   final userDoc = await _firestore.userDocument();

    yield* userDoc.listProsConsCollection
      .where('status', isEqualTo: StatusList.cons)
      .orderBy('serverTimestamp', descending: true)
      .snapshots()
      .map(
        (snapshot) => right<ListProsConsFailure, KtList<ListProsCons>>(
          snapshot.docs.map(
            (doc) => ListProsConsDto
          .fromFirestore(doc)
          .toDomain()
          ).toImmutableList()
        ),
      ).onErrorReturnWith(
        (error, stackTrace){
          if(error is PlatformException && error.message!.contains('PERMISSION_DENIED')){
            return left(const ListProsConsFailure.insufficientPermissions());
          }else{
            return left(const ListProsConsFailure.unexpected());
          }
        } 
      );

  }

  @override
  Stream<Either<ListProsConsFailure, KtList<ListProsCons>>> watchOnlyNotDecide() async* {
   final userDoc = await _firestore.userDocument();

    yield* userDoc.listProsConsCollection
      .where('status', isEqualTo: StatusList.notdecide)
      .orderBy('serverTimestamp', descending: true)
      .snapshots()
      .map(
        (snapshot) => right<ListProsConsFailure, KtList<ListProsCons>>(
          snapshot.docs.map(
            (doc) => ListProsConsDto
          .fromFirestore(doc)
          .toDomain()
          ).toImmutableList()
        ),
      ).onErrorReturnWith(
        (error, stackTrace){
          if(error is PlatformException && error.message!.contains('PERMISSION_DENIED')){
            return left(const ListProsConsFailure.insufficientPermissions());
          }else{
            return left(const ListProsConsFailure.unexpected());
          }
        } 
      );
  }

  @override
  Stream<Either<ListProsConsFailure, KtList<ListProsCons>>> watchOnlyPros() async* {
    final userDoc = await _firestore.userDocument();

    yield* userDoc.listProsConsCollection
      .where('status', isEqualTo: StatusList.pros)
      .orderBy('serverTimestamp', descending: true)
      .snapshots()
      .map(
        (snapshot) => right<ListProsConsFailure, KtList<ListProsCons>>(
          snapshot.docs.map(
            (doc) => ListProsConsDto
          .fromFirestore(doc)
          .toDomain()
          ).toImmutableList()
        ),
      ).onErrorReturnWith(
        (error, stackTrace){
          if(error is PlatformException && error.message!.contains('PERMISSION_DENIED')){
            return left(const ListProsConsFailure.insufficientPermissions());
          }else{
            return left(const ListProsConsFailure.unexpected());
          }
        } 
      );
  }
  
  @override
  Future<Either<ListProsConsFailure, Unit>> createItem(ItemProsCons itemProsCons, bool isPro, String id) async {
    try{

      final userDoc = await _firestore.userDocument();
      final itemProsConsDto = ItemProsConsDto.fromDomain(itemProsCons);


      if(isPro){
        
        await userDoc.prosCollection(id)
        .doc(itemProsConsDto.id)
        .set(itemProsConsDto.toJson(), SetOptions(merge: true));

      }else{

        await userDoc.consCollection(id)
        .doc(itemProsConsDto.id)
        .set(itemProsConsDto.toJson(), SetOptions(merge: true));

      }

      


      return right(unit);  


    }on PlatformException catch (e){

      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListProsConsFailure.insufficientPermissions());
      } else {
        return left(const ListProsConsFailure.unexpected());
      }

    }
  }
  
  @override
  Future<Either<ListProsConsFailure, Unit>> createList(ListProsCons listProsCons) async {
    try{

      final userDoc = await _firestore.userDocument();
      final listProsConsDto = ListProsConsDto.fromDomain(listProsCons);


      await userDoc.listProsConsCollection
        .doc(listProsConsDto.id)
        .set(listProsConsDto.toJson(), SetOptions(merge: true));


      return right(unit);  


    }on PlatformException catch (e){

      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListProsConsFailure.insufficientPermissions());
      } else {
        return left(const ListProsConsFailure.unexpected());
      }

    }
  }
  
  @override
  Future<Either<ListProsConsFailure, Unit>> deleteItem(ItemProsCons itemProsCons, bool isPro, String id) async {
    try{

      final userDoc = await _firestore.userDocument();
      final itemProsConsDto = ItemProsConsDto.fromDomain(itemProsCons);


      if(isPro){
        
        await userDoc.prosCollection(id)
        .doc(itemProsConsDto.id)
        .delete();

      }else{

        await userDoc.consCollection(id)
        .doc(itemProsConsDto.id)
        .delete();

      }

      


      return right(unit);  


    }on PlatformException catch (e){

      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListProsConsFailure.insufficientPermissions());
      } else {
        return left(const ListProsConsFailure.unexpected());
      }

    }
  }
  
  @override
  Future<Either<ListProsConsFailure, Unit>> deleteList(ListProsCons listProsCons) async {
    try{

      final userDoc = await _firestore.userDocument();
      final listProsConsDto = ListProsConsDto.fromDomain(listProsCons);


      await userDoc.listProsConsCollection
        .doc(listProsConsDto.id)
        .delete();


      return right(unit);  


    }on PlatformException catch (e){

      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListProsConsFailure.insufficientPermissions());
      } else {
        return left(const ListProsConsFailure.unexpected());
      }

    }
  }
  
  @override
  Future<Either<ListProsConsFailure, Unit>> updateItem(ItemProsCons itemProsCons, bool isPro, String id) async {
    try{

      final userDoc = await _firestore.userDocument();
      final itemProsConsDto = ItemProsConsDto.fromDomain(itemProsCons);

      print('--- LISTPROSCONS REPOSITORY = PATH ${userDoc.collection('listProsCons').doc(id)}  ---');

      if(isPro){
        

        await userDoc.prosCollection(id)
        .doc(itemProsConsDto.id)
        .set(itemProsConsDto.toJson(), SetOptions(merge: true));

      }else{

        await userDoc.consCollection(id)
        .doc(itemProsConsDto.id)
        .set(itemProsConsDto.toJson(), SetOptions(merge: true));
          
          //.add(itemProsConsDto.toJson());
        

      }

      


      return right(unit);  


    }on PlatformException catch (e){

      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListProsConsFailure.insufficientPermissions());
      } else {
        return left(const ListProsConsFailure.unexpected());
      }

    }
  }
  
  @override
  Future<Either<ListProsConsFailure, Unit>> updateList(ListProsCons listProsCons) async {
    try{

      final userDoc = await _firestore.userDocument();
      final listProsConsDto = ListProsConsDto.fromDomain(listProsCons);


      await userDoc.listProsConsCollection
        .doc(listProsConsDto.id)
        .set(listProsConsDto.toJson(), SetOptions(merge: true));


      return right(unit);  


    }on PlatformException catch (e){

      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListProsConsFailure.insufficientPermissions());
      } else {
        return left(const ListProsConsFailure.unexpected());
      }

    }
  }

  

  @override
  Stream<Either<ListProsConsFailure, KtList<ItemProsCons>>> watchItemPros(String id) async* {
    print('--- LISTPROSCONS REPOSITORY = watchItemCons BEGIN --- ');

    final userDoc = await _firestore.userDocument();

    print('--- LISTPROSCONS REPOSITORY = watchItemCons GET userDoc --- ');

    yield* userDoc.prosCollection(id)
      .orderBy('createDate', descending: false)
      .snapshots()
      .map(
        (snapshot) => right<ListProsConsFailure, KtList<ItemProsCons>>(
          snapshot.docs.map((doc) {
            print('--- LISTPROSCONS REPOSITORY = watchItemCons --- ');
            return ItemProsConsDto
              .fromFirestore(doc)
              .toDomain();
          } 
          ).toImmutableList()
        ),
      ).onErrorReturnWith(
        (error, stackTrace){
          if(error is PlatformException && error.message!.contains('PERMISSION_DENIED')){
            print('--- LISTPROSCONS REPOSITORY = OnErrorReturnWith => $error --- ');
            return left(const ListProsConsFailure.insufficientPermissions());

          }else{
            print('--- LISTPROSCONS REPOSITORY = OnErrorReturnWith => $error --- ');
            return left(const ListProsConsFailure.unexpected());
          }
        } 
      );
  }
  
  @override
  Stream<Either<ListProsConsFailure, KtList<ItemProsCons>>> watchItemCons(String id) async* {
    print('--- LISTPROSCONS REPOSITORY = watchItemCons BEGIN --- ');

    final userDoc = await _firestore.userDocument();

    print('--- LISTPROSCONS REPOSITORY = watchItemCons GET userDoc --- ');

    yield* userDoc.consCollection(id)
      .orderBy('createDate', descending: false)
      .snapshots()
      .map(
        (snapshot) => right<ListProsConsFailure, KtList<ItemProsCons>>(
          snapshot.docs.map((doc) {
            print('--- LISTPROSCONS REPOSITORY = watchItemCons --- ');
            return ItemProsConsDto
              .fromFirestore(doc)
              .toDomain();
          } 
          ).toImmutableList()
        ),
      ).onErrorReturnWith(
        (error, stackTrace){
          if(error is PlatformException && error.message!.contains('PERMISSION_DENIED')){
            print('--- LISTPROSCONS REPOSITORY = OnErrorReturnWith => $error --- ');
            return left(const ListProsConsFailure.insufficientPermissions());

          }else{
            print('--- LISTPROSCONS REPOSITORY = OnErrorReturnWith => $error --- ');
            return left(const ListProsConsFailure.unexpected());
          }
        } 
      );
  }
  
}