import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FuncoesRecord extends FirestoreRecord {
  FuncoesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  void _initializeFields() {
    _descricao = snapshotData['descricao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instanceFor(app: Firebase.app(), databaseId: 'mondaha')
          .collection('funcoes');

  static Stream<FuncoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FuncoesRecord.fromSnapshot(s));

  static Future<FuncoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FuncoesRecord.fromSnapshot(s));

  static FuncoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FuncoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FuncoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FuncoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FuncoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FuncoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFuncoesRecordData({
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descricao': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class FuncoesRecordDocumentEquality implements Equality<FuncoesRecord> {
  const FuncoesRecordDocumentEquality();

  @override
  bool equals(FuncoesRecord? e1, FuncoesRecord? e2) {
    return e1?.descricao == e2?.descricao;
  }

  @override
  int hash(FuncoesRecord? e) => const ListEquality().hash([e?.descricao]);

  @override
  bool isValidKey(Object? o) => o is FuncoesRecord;
}
