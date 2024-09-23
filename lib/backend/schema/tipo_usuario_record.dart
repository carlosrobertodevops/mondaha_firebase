import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipoUsuarioRecord extends FirestoreRecord {
  TipoUsuarioRecord._(
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
          .collection('tipo_usuario');

  static Stream<TipoUsuarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipoUsuarioRecord.fromSnapshot(s));

  static Future<TipoUsuarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipoUsuarioRecord.fromSnapshot(s));

  static TipoUsuarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TipoUsuarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipoUsuarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipoUsuarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipoUsuarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipoUsuarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipoUsuarioRecordData({
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descricao': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class TipoUsuarioRecordDocumentEquality implements Equality<TipoUsuarioRecord> {
  const TipoUsuarioRecordDocumentEquality();

  @override
  bool equals(TipoUsuarioRecord? e1, TipoUsuarioRecord? e2) {
    return e1?.descricao == e2?.descricao;
  }

  @override
  int hash(TipoUsuarioRecord? e) => const ListEquality().hash([e?.descricao]);

  @override
  bool isValidKey(Object? o) => o is TipoUsuarioRecord;
}
