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

  // "faccao" field.
  String? _faccao;
  String get faccao => _faccao ?? '';
  bool hasFaccao() => _faccao != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "funcao" field.
  List<String>? _funcao;
  List<String> get funcao => _funcao ?? const [];
  bool hasFuncao() => _funcao != null;

  void _initializeFields() {
    _nomeCompleto = snapshotData['nome_completo'] as String?;
    _vulgo = getDataList(snapshotData['vulgo']);
    _photoPath = snapshotData['photo_path'] as String?;
    _faccao = snapshotData['faccao'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _funcao = getDataList(snapshotData['funcao']);
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
  String? faccao,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome_completo': nomeCompleto,
      'photo_path': photoPath,
      'faccao': faccao,
      'user_id': userId,
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
        e1?.faccao == e2?.faccao &&
        e1?.userId == e2?.userId &&
        listEquality.equals(e1?.funcao, e2?.funcao);
  }

  @override
  int hash(MembrosRecord? e) => const ListEquality().hash([
        e?.nomeCompleto,
        e?.vulgo,
        e?.photoPath,
        e?.faccao,
        e?.userId,
        e?.funcao
      ]);

  @override
  bool isValidKey(Object? o) => o is MembrosRecord;
}
