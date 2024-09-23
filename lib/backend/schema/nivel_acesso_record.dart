import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NivelAcessoRecord extends FirestoreRecord {
  NivelAcessoRecord._(
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
          .collection('nivel_acesso');

  static Stream<NivelAcessoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NivelAcessoRecord.fromSnapshot(s));

  static Future<NivelAcessoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NivelAcessoRecord.fromSnapshot(s));

  static NivelAcessoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NivelAcessoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NivelAcessoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NivelAcessoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NivelAcessoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NivelAcessoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNivelAcessoRecordData({
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descricao': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class NivelAcessoRecordDocumentEquality implements Equality<NivelAcessoRecord> {
  const NivelAcessoRecordDocumentEquality();

  @override
  bool equals(NivelAcessoRecord? e1, NivelAcessoRecord? e2) {
    return e1?.descricao == e2?.descricao;
  }

  @override
  int hash(NivelAcessoRecord? e) => const ListEquality().hash([e?.descricao]);

  @override
  bool isValidKey(Object? o) => o is NivelAcessoRecord;
}
