import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgenciaRecord extends FirestoreRecord {
  AgenciaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instanceFor(app: Firebase.app(), databaseId: 'mondaha')
          .collection('agencia');

  static Stream<AgenciaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgenciaRecord.fromSnapshot(s));

  static Future<AgenciaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgenciaRecord.fromSnapshot(s));

  static AgenciaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgenciaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgenciaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgenciaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgenciaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgenciaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgenciaRecordData({
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgenciaRecordDocumentEquality implements Equality<AgenciaRecord> {
  const AgenciaRecordDocumentEquality();

  @override
  bool equals(AgenciaRecord? e1, AgenciaRecord? e2) {
    return e1?.nome == e2?.nome;
  }

  @override
  int hash(AgenciaRecord? e) => const ListEquality().hash([e?.nome]);

  @override
  bool isValidKey(Object? o) => o is AgenciaRecord;
}
