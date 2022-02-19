import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'qr_stuff_record.g.dart';

abstract class QrStuffRecord
    implements Built<QrStuffRecord, QrStuffRecordBuilder> {
  static Serializer<QrStuffRecord> get serializer => _$qrStuffRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'qr_email')
  String get qrEmail;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(QrStuffRecordBuilder builder) =>
      builder..qrEmail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('qr_stuff');

  static Stream<QrStuffRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<QrStuffRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  QrStuffRecord._();
  factory QrStuffRecord([void Function(QrStuffRecordBuilder) updates]) =
      _$QrStuffRecord;

  static QrStuffRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createQrStuffRecordData({
  String qrEmail,
}) =>
    serializers.toFirestore(
        QrStuffRecord.serializer, QrStuffRecord((q) => q..qrEmail = qrEmail));
