import 'package:dartz/dartz.dart';
import 'package:desicion_maker_app/domain/core/value_objects.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/itemProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons_failure.dart';
import 'package:kt_dart/collection.dart';



abstract class IProsConsRepository {

  /// ListProsCons method
  /// ---
  /// Watch all ListProsCons
  Stream<Either<ListProsConsFailure, KtList<ListProsCons>>> watchAll();
  // Watch only Pros ListProsCons
  Stream<Either<ListProsConsFailure, KtList<ListProsCons>>> watchOnlyPros();
  // Watch only Cons ListProsCons
  Stream<Either<ListProsConsFailure, KtList<ListProsCons>>> watchOnlyCons();
  // Watch only notDecide ListProsCons
  Stream<Either<ListProsConsFailure, KtList<ListProsCons>>> watchOnlyNotDecide();
  // Create ListProsCons
  Future<Either<ListProsConsFailure, Unit>> createList(ListProsCons listProsCons);
  // Update ListProsCons
  Future<Either<ListProsConsFailure, Unit>> updateList(ListProsCons listProsCons);
  // Delete ListProsCons
  Future<Either<ListProsConsFailure, Unit>> deleteList(ListProsCons listProsCons);
  /// ---
  /// ItemProsCons method
  /// ---
  /// Watch all item Pros
  Stream<Either<ListProsConsFailure, KtList<ItemProsCons>>> watchItemPros(String id);
  /// Watch all item Cons
  Stream<Either<ListProsConsFailure, KtList<ItemProsCons>>> watchItemCons(String id);
  // Create ItemProsCons
  Future<Either<ListProsConsFailure, Unit>> createItem(ItemProsCons itemProsCons, bool isPro, String id);
  // Update ItemProsCons
  Future<Either<ListProsConsFailure, Unit>> updateItem(ItemProsCons itemProsCons, bool isPro, String id);
  // Delete ItemProsCons
  Future<Either<ListProsConsFailure, Unit>> deleteItem(ItemProsCons itemProsCons, bool isPro, String id);
  


}