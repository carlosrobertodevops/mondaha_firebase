import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ValidacoesRecord extends FirestoreRecord {
  ValidacoesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "nivel" field.
  int? _nivel;
  int get nivel => _nivel ?? 0;
  bool hasNivel() => _nivel != null;

  void _initializeFields() {
    _descricao = snapshotData['descricao'] as String?;
    _nivel = castToType<int>(snapshotData['nivel']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instanceFor(app: Firebase.app(), databaseId: 'mondaha')
          .collection('validacoes');

  static Stream<ValidacoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ValidacoesRecord.fromSnapshot(s));

  static Future<ValidacoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ValidacoesRecord.fromSnapshot(s));

  static ValidacoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ValidacoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ValidacoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ValidacoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ValidacoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ValidacoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createValidacoesRecordData({
  String? descricao,
  int? nivel,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descricao': descricao,
      'nivel': nivel,
    }.withoutNulls,
  );

  return firestoreData;
}

class ValidacoesRecordDocumentEquality implements Equality<ValidacoesRecord> {
  const ValidacoesRecordDocumentEquality();

  @override
  bool equals(ValidacoesRecord? e1, ValidacoesRecord? e2) {
    return e1?.descricao == e2?.descricao && e1?.nivel == e2?.nivel;
  }

  @override
  int hash(ValidacoesRecord? e) =>
      const ListEquality().hash([e?.descricao, e?.nivel]);

  @override
  bool isValidKey(Object? o) => o is ValidacoesRecord;
}
