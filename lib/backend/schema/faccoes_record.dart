import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FaccoesRecord extends FirestoreRecord {
  FaccoesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "data_fundacao" field.
  DateTime? _dataFundacao;
  DateTime? get dataFundacao => _dataFundacao;
  bool hasDataFundacao() => _dataFundacao != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _dataFundacao = snapshotData['data_fundacao'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instanceFor(app: Firebase.app(), databaseId: 'mondaha')
          .collection('faccoes');

  static Stream<FaccoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FaccoesRecord.fromSnapshot(s));

  static Future<FaccoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FaccoesRecord.fromSnapshot(s));

  static FaccoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FaccoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FaccoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FaccoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FaccoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FaccoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFaccoesRecordData({
  String? nome,
  DateTime? dataFundacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'data_fundacao': dataFundacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class FaccoesRecordDocumentEquality implements Equality<FaccoesRecord> {
  const FaccoesRecordDocumentEquality();

  @override
  bool equals(FaccoesRecord? e1, FaccoesRecord? e2) {
    return e1?.nome == e2?.nome && e1?.dataFundacao == e2?.dataFundacao;
  }

  @override
  int hash(FaccoesRecord? e) =>
      const ListEquality().hash([e?.nome, e?.dataFundacao]);

  @override
  bool isValidKey(Object? o) => o is FaccoesRecord;
}
