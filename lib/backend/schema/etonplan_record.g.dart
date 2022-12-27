// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'etonplan_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EtonplanRecord> _$etonplanRecordSerializer =
    new _$EtonplanRecordSerializer();

class _$EtonplanRecordSerializer
    implements StructuredSerializer<EtonplanRecord> {
  @override
  final Iterable<Type> types = const [EtonplanRecord, _$EtonplanRecord];
  @override
  final String wireName = 'EtonplanRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EtonplanRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdby;
    if (value != null) {
      result
        ..add('createdby')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  EtonplanRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EtonplanRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdby':
          result.createdby = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$EtonplanRecord extends EtonplanRecord {
  @override
  final String? type;
  @override
  final int? price;
  @override
  final String? image;
  @override
  final String? id;
  @override
  final DocumentReference<Object?>? createdby;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EtonplanRecord([void Function(EtonplanRecordBuilder)? updates]) =>
      (new EtonplanRecordBuilder()..update(updates))._build();

  _$EtonplanRecord._(
      {this.type, this.price, this.image, this.id, this.createdby, this.ffRef})
      : super._();

  @override
  EtonplanRecord rebuild(void Function(EtonplanRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EtonplanRecordBuilder toBuilder() =>
      new EtonplanRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EtonplanRecord &&
        type == other.type &&
        price == other.price &&
        image == other.image &&
        id == other.id &&
        createdby == other.createdby &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, type.hashCode), price.hashCode), image.hashCode),
                id.hashCode),
            createdby.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EtonplanRecord')
          ..add('type', type)
          ..add('price', price)
          ..add('image', image)
          ..add('id', id)
          ..add('createdby', createdby)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EtonplanRecordBuilder
    implements Builder<EtonplanRecord, EtonplanRecordBuilder> {
  _$EtonplanRecord? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DocumentReference<Object?>? _createdby;
  DocumentReference<Object?>? get createdby => _$this._createdby;
  set createdby(DocumentReference<Object?>? createdby) =>
      _$this._createdby = createdby;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EtonplanRecordBuilder() {
    EtonplanRecord._initializeBuilder(this);
  }

  EtonplanRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _price = $v.price;
      _image = $v.image;
      _id = $v.id;
      _createdby = $v.createdby;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EtonplanRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EtonplanRecord;
  }

  @override
  void update(void Function(EtonplanRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EtonplanRecord build() => _build();

  _$EtonplanRecord _build() {
    final _$result = _$v ??
        new _$EtonplanRecord._(
            type: type,
            price: price,
            image: image,
            id: id,
            createdby: createdby,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
