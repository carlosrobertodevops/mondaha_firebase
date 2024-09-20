import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LogsRecord extends FirestoreRecord {
  LogsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "modulo" field.
  String? _modulo;
  String get modulo => _modulo ?? '';
  bool hasModulo() => _modulo != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _data = snapshotData['data'] as DateTime?;
    _modulo = snapshotData['modulo'] as String?;
    _id = snapshotData['id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instanceFor(app: Firebase.app(), databaseId: 'mondaha')
          .collection('logs');

  static Stream<LogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LogsRecord.fromSnapshot(s));

  static Future<LogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LogsRecord.fromSnapshot(s));

  static LogsRecord fromSnapshot(DocumentSnapshot snapshot) => LogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLogsRecordData({
  DocumentReference? user,
  DateTime? data,
  String? modulo,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'data': data,
      'modulo': modulo,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class LogsRecordDocumentEquality implements Equality<LogsRecord> {
  const LogsRecordDocumentEquality();

  @override
  bool equals(LogsRecord? e1, LogsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.data == e2?.data &&
        e1?.modulo == e2?.modulo &&
        e1?.id == e2?.id;
  }

  @override
  int hash(LogsRecord? e) =>
      const ListEquality().hash([e?.user, e?.data, e?.modulo, e?.id]);

  @override
  bool isValidKey(Object? o) => o is LogsRecord;
}
