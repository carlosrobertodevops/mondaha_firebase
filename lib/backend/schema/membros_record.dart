import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembrosRecord extends FirestoreRecord {
  MembrosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome_completo" field.
  String? _nomeCompleto;
  String get nomeCompleto => _nomeCompleto ?? '';
  bool hasNomeCompleto() => _nomeCompleto != null;

  // "vulgo" field.
  List<String>? _vulgo;
  List<String> get vulgo => _vulgo ?? const [];
  bool hasVulgo() => _vulgo != null;

  // "photo_path" field.
  String? _photoPath;
  String get photoPath => _photoPath ?? '';
  bool hasPhotoPath() => _photoPath != null;

  // "funcao_id" field.
  DocumentReference? _funcaoId;
  DocumentReference? get funcaoId => _funcaoId;
  bool hasFuncaoId() => _funcaoId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "faccao_id" field.
  DocumentReference? _faccaoId;
  DocumentReference? get faccaoId => _faccaoId;
  bool hasFaccaoId() => _faccaoId != null;

  // "validacao_id" field.
  DocumentReference? _validacaoId;
  DocumentReference? get validacaoId => _validacaoId;
  bool hasValidacaoId() => _validacaoId != null;

  // "dt_cadastro" field.
  DateTime? _dtCadastro;
  DateTime? get dtCadastro => _dtCadastro;
  bool hasDtCadastro() => _dtCadastro != null;

  // "dt_alteracao" field.
  DateTime? _dtAlteracao;
  DateTime? get dtAlteracao => _dtAlteracao;
  bool hasDtAlteracao() => _dtAlteracao != null;

  // "user_alteracao_id" field.
  DocumentReference? _userAlteracaoId;
  DocumentReference? get userAlteracaoId => _userAlteracaoId;
  bool hasUserAlteracaoId() => _userAlteracaoId != null;

  void _initializeFields() {
    _nomeCompleto = snapshotData['nome_completo'] as String?;
    _vulgo = getDataList(snapshotData['vulgo']);
    _photoPath = snapshotData['photo_path'] as String?;
    _funcaoId = snapshotData['funcao_id'] as DocumentReference?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _faccaoId = snapshotData['faccao_id'] as DocumentReference?;
    _validacaoId = snapshotData['validacao_id'] as DocumentReference?;
    _dtCadastro = snapshotData['dt_cadastro'] as DateTime?;
    _dtAlteracao = snapshotData['dt_alteracao'] as DateTime?;
    _userAlteracaoId = snapshotData['user_alteracao_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instanceFor(app: Firebase.app(), databaseId: 'mondaha')
          .collection('membros');

  static Stream<MembrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembrosRecord.fromSnapshot(s));

  static Future<MembrosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembrosRecord.fromSnapshot(s));

  static MembrosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembrosRecordData({
  String? nomeCompleto,
  String? photoPath,
  DocumentReference? funcaoId,
  DocumentReference? userId,
  DocumentReference? faccaoId,
  DocumentReference? validacaoId,
  DateTime? dtCadastro,
  DateTime? dtAlteracao,
  DocumentReference? userAlteracaoId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome_completo': nomeCompleto,
      'photo_path': photoPath,
      'funcao_id': funcaoId,
      'user_id': userId,
      'faccao_id': faccaoId,
      'validacao_id': validacaoId,
      'dt_cadastro': dtCadastro,
      'dt_alteracao': dtAlteracao,
      'user_alteracao_id': userAlteracaoId,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembrosRecordDocumentEquality implements Equality<MembrosRecord> {
  const MembrosRecordDocumentEquality();

  @override
  bool equals(MembrosRecord? e1, MembrosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomeCompleto == e2?.nomeCompleto &&
        listEquality.equals(e1?.vulgo, e2?.vulgo) &&
        e1?.photoPath == e2?.photoPath &&
        e1?.funcaoId == e2?.funcaoId &&
        e1?.userId == e2?.userId &&
        e1?.faccaoId == e2?.faccaoId &&
        e1?.validacaoId == e2?.validacaoId &&
        e1?.dtCadastro == e2?.dtCadastro &&
        e1?.dtAlteracao == e2?.dtAlteracao &&
        e1?.userAlteracaoId == e2?.userAlteracaoId;
  }

  @override
  int hash(MembrosRecord? e) => const ListEquality().hash([
        e?.nomeCompleto,
        e?.vulgo,
        e?.photoPath,
        e?.funcaoId,
        e?.userId,
        e?.faccaoId,
        e?.validacaoId,
        e?.dtCadastro,
        e?.dtAlteracao,
        e?.userAlteracaoId
      ]);

  @override
  bool isValidKey(Object? o) => o is MembrosRecord;
}
