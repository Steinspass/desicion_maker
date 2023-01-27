import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desicion_maker_app/domain/auth/i_auth_facade.dart';
import 'package:desicion_maker_app/domain/core/errors.dart';
import 'package:desicion_maker_app/injection.dart';
export 'package:cloud_firestore/cloud_firestore.dart';


extension FirestoreX on FirebaseFirestore{

/// The user must be already authenticated when calling this method.
  /// Otherwise, throws [NotAuthenticatedError].
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user!.id?.getOrCrash());
        
  }

}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get listProsConsCollection => collection('listProsCons');

  /// Nested subcollection under a [listProsConsCollection]'s document list Pros.
  CollectionReference prosCollection(String id) => collection('listProsCons/$id/listItemPros');

  /// Nested subcollection under a [listProsConsCollection]'s document list Cons.
  CollectionReference consCollection(String id) => collection('listProsCons/$id/listItemCons');


}