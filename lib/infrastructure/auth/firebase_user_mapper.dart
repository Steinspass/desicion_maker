import 'package:firebase_auth/firebase_auth.dart' as frAuth;
import 'package:injectable/injectable.dart';

import 'package:desicion_maker_app/domain/auth/user.dart';
import 'package:desicion_maker_app/domain/auth/value_objects.dart';
import 'package:desicion_maker_app/domain/core/value_objects.dart';


@lazySingleton
class FirebaseUserMapper {
 User toDomain(frAuth.User _) {
    return User(
            id: UniqueId.fromUniqueString(_.uid),
            name: StringSingleLine(_.displayName ?? ''),
            email: EmailAddress(_.email ?? ''),
            isAnonymous: _.isAnonymous,
          );
  }
}
