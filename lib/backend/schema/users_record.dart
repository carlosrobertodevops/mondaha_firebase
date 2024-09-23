import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "lastActive" field.
  DateTime? _lastActive;
  DateTime? get lastActive => _lastActive;
  bool hasLastActive() => _lastActive != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "agencia_id" field.
  DocumentReference? _agenciaId;
  DocumentReference? get agenciaId => _agenciaId;
  bool hasAgenciaId() => _agenciaId != null;

  // "tipo_usuario_id" field.
  DocumentReference? _tipoUsuarioId;
  DocumentReference? get tipoUsuarioId => _tipoUsuarioId;
  bool hasTipoUsuarioId() => _tipoUsuarioId != null;

  // "nivel_acesso_id" field.
  DocumentReference? _nivelAcessoId;
  DocumentReference? get nivelAcessoId => _nivelAcessoId;
  bool hasNivelAcessoId() => _nivelAcessoId != null;

  // "nome_completo" field.
  String? _nomeCompleto;
  String get nomeCompleto => _nomeCompleto ?? '';
  bool hasNomeCompleto() => _nomeCompleto != null;

  // "faccao_equipe" field.
  String? _faccaoEquipe;
  String get faccaoEquipe => _faccaoEquipe ?? '';
  bool hasFaccaoEquipe() => _faccaoEquipe != null;

  // "is_bloqueado" field.
  bool? _isBloqueado;
  bool get isBloqueado => _isBloqueado ?? false;
  bool hasIsBloqueado() => _isBloqueado != null;

  // "is_acesso" field.
  bool? _isAcesso;
  bool get isAcesso => _isAcesso ?? false;
  bool hasIsAcesso() => _isAcesso != null;

  // "user_liberou_acesso" field.
  DocumentReference? _userLiberouAcesso;
  DocumentReference? get userLiberouAcesso => _userLiberouAcesso;
  bool hasUserLiberouAcesso() => _userLiberouAcesso != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _lastActive = snapshotData['lastActive'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _agenciaId = snapshotData['agencia_id'] as DocumentReference?;
    _tipoUsuarioId = snapshotData['tipo_usuario_id'] as DocumentReference?;
    _nivelAcessoId = snapshotData['nivel_acesso_id'] as DocumentReference?;
    _nomeCompleto = snapshotData['nome_completo'] as String?;
    _faccaoEquipe = snapshotData['faccao_equipe'] as String?;
    _isBloqueado = snapshotData['is_bloqueado'] as bool?;
    _isAcesso = snapshotData['is_acesso'] as bool?;
    _userLiberouAcesso =
        snapshotData['user_liberou_acesso'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instanceFor(app: Firebase.app(), databaseId: 'mondaha')
          .collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? lastActive,
  String? bio,
  DateTime? createdAt,
  DocumentReference? agenciaId,
  DocumentReference? tipoUsuarioId,
  DocumentReference? nivelAcessoId,
  String? nomeCompleto,
  String? faccaoEquipe,
  bool? isBloqueado,
  bool? isAcesso,
  DocumentReference? userLiberouAcesso,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'lastActive': lastActive,
      'bio': bio,
      'createdAt': createdAt,
      'agencia_id': agenciaId,
      'tipo_usuario_id': tipoUsuarioId,
      'nivel_acesso_id': nivelAcessoId,
      'nome_completo': nomeCompleto,
      'faccao_equipe': faccaoEquipe,
      'is_bloqueado': isBloqueado,
      'is_acesso': isAcesso,
      'user_liberou_acesso': userLiberouAcesso,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.lastActive == e2?.lastActive &&
        e1?.bio == e2?.bio &&
        e1?.createdAt == e2?.createdAt &&
        e1?.agenciaId == e2?.agenciaId &&
        e1?.tipoUsuarioId == e2?.tipoUsuarioId &&
        e1?.nivelAcessoId == e2?.nivelAcessoId &&
        e1?.nomeCompleto == e2?.nomeCompleto &&
        e1?.faccaoEquipe == e2?.faccaoEquipe &&
        e1?.isBloqueado == e2?.isBloqueado &&
        e1?.isAcesso == e2?.isAcesso &&
        e1?.userLiberouAcesso == e2?.userLiberouAcesso;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.lastActive,
        e?.bio,
        e?.createdAt,
        e?.agenciaId,
        e?.tipoUsuarioId,
        e?.nivelAcessoId,
        e?.nomeCompleto,
        e?.faccaoEquipe,
        e?.isBloqueado,
        e?.isAcesso,
        e?.userLiberouAcesso
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
