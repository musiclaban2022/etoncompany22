import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'etonplan_record.g.dart';

abstract class EtonplanRecord
    implements Built<EtonplanRecord, EtonplanRecordBuilder> {
  static Serializer<EtonplanRecord> get serializer =>
      _$etonplanRecordSerializer;

  String? get type;

  int? get price;

  String? get image;

  String? get id;

  DocumentReference? get createdby;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EtonplanRecordBuilder builder) => builder
    ..type = ''
    ..price = 0
    ..image = ''
    ..id = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('etonplan');

  static Stream<EtonplanRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EtonplanRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EtonplanRecord._();
  factory EtonplanRecord([void Function(EtonplanRecordBuilder) updates]) =
      _$EtonplanRecord;

  static EtonplanRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEtonplanRecordData({
  String? type,
  int? price,
  String? image,
  String? id,
  DocumentReference? createdby,
}) {
  final firestoreData = serializers.toFirestore(
    EtonplanRecord.serializer,
    EtonplanRecord(
      (e) => e
        ..type = type
        ..price = price
        ..image = image
        ..id = id
        ..createdby = createdby,
    ),
  );

  return firestoreData;
}
