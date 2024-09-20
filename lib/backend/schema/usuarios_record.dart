import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "foto_perfil" field.
  String? _fotoPerfil;
  String get fotoPerfil => _fotoPerfil ?? '';
  bool hasFotoPerfil() => _fotoPerfil != null;

  // "agencia" field.
  List<DocumentReference>? _agencia;
  List<DocumentReference> get agencia => _agencia ?? const [];
  bool hasAgencia() => _agencia != null;

  // "tipo_usuario" field.
  List<DocumentReference>? _tipoUsuario;
  List<DocumentReference> get tipoUsuario => _tipoUsuario ?? const [];
  bool hasTipoUsuario() => _tipoUsuario != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _nome = snapshotData['nome'] as String?;
    _email = snapshotData['email'] as String?;
    _fotoPerfil = snapshotData['foto_perfil'] as String?;
    _agencia = getDataList(snapshotData['agencia']);
    _tipoUsuario = getDataList(snapshotData['tipo_usuario']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instanceFor(app: Firebase.app(), databaseId: 'mondaha')
          .collection('usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
  String? userId,
  String? nome,
  String? email,
  String? fotoPerfil,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'nome': nome,
      'email': email,
      'foto_perfil': fotoPerfil,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userId == e2?.userId &&
        e1?.nome == e2?.nome &&
        e1?.email == e2?.email &&
        e1?.fotoPerfil == e2?.fotoPerfil &&
        listEquality.equals(e1?.agencia, e2?.agencia) &&
        listEquality.equals(e1?.tipoUsuario, e2?.tipoUsuario);
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.nome,
        e?.email,
        e?.fotoPerfil,
        e?.agencia,
        e?.tipoUsuario
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}
