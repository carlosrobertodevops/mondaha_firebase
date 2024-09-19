import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipoUsersRecord extends FirestoreRecord {
  TipoUsersRecord._(
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
          .collection('tipoUsers');

  static Stream<TipoUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipoUsersRecord.fromSnapshot(s));

  static Future<TipoUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipoUsersRecord.fromSnapshot(s));

  static TipoUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TipoUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipoUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipoUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipoUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipoUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipoUsersRecordData({
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descricao': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class TipoUsersRecordDocumentEquality implements Equality<TipoUsersRecord> {
  const TipoUsersRecordDocumentEquality();

  @override
  bool equals(TipoUsersRecord? e1, TipoUsersRecord? e2) {
    return e1?.descricao == e2?.descricao;
  }

  @override
  int hash(TipoUsersRecord? e) => const ListEquality().hash([e?.descricao]);

  @override
  bool isValidKey(Object? o) => o is TipoUsersRecord;
}
