// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EchotrakOrderCreateRequest _$EchotrakOrderCreateRequestFromJson(
    Map<String, dynamic> json) {
  return _EchotrakOrderCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$EchotrakOrderCreateRequest {
  @JsonKey(name: 'reference')
  String? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: 'nom_client')
  String get nomClient => throw _privateConstructorUsedError;
  @JsonKey(name: 'telephone')
  String get telephone => throw _privateConstructorUsedError;
  @JsonKey(name: 'telephone_2')
  String? get telephone2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'adresse')
  String get adresse => throw _privateConstructorUsedError;
  @JsonKey(name: 'code_postal')
  String? get codePostal => throw _privateConstructorUsedError;
  @JsonKey(name: 'commune')
  String get commune => throw _privateConstructorUsedError;
  @JsonKey(name: 'code_wilaya')
  int get codeWilaya => throw _privateConstructorUsedError;
  @JsonKey(name: 'montant')
  double get montant => throw _privateConstructorUsedError;
  @JsonKey(name: 'remarque')
  String? get remarque => throw _privateConstructorUsedError;
  @JsonKey(name: 'produit')
  String? get produit => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantite')
  String? get quantite => throw _privateConstructorUsedError;
  @JsonKey(name: 'produit_a_recuperer')
  String? get produitARecuperer => throw _privateConstructorUsedError;
  @JsonKey(name: 'boutique')
  String? get boutique => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'stop_desk')
  int? get stopDesk => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight')
  double? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'fragile')
  int? get fragile => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_open')
  int? get canOpen => throw _privateConstructorUsedError;

  /// Serializes this EchotrakOrderCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EchotrakOrderCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EchotrakOrderCreateRequestCopyWith<EchotrakOrderCreateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EchotrakOrderCreateRequestCopyWith<$Res> {
  factory $EchotrakOrderCreateRequestCopyWith(EchotrakOrderCreateRequest value,
          $Res Function(EchotrakOrderCreateRequest) then) =
      _$EchotrakOrderCreateRequestCopyWithImpl<$Res,
          EchotrakOrderCreateRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'reference') String? reference,
      @JsonKey(name: 'nom_client') String nomClient,
      @JsonKey(name: 'telephone') String telephone,
      @JsonKey(name: 'telephone_2') String? telephone2,
      @JsonKey(name: 'adresse') String adresse,
      @JsonKey(name: 'code_postal') String? codePostal,
      @JsonKey(name: 'commune') String commune,
      @JsonKey(name: 'code_wilaya') int codeWilaya,
      @JsonKey(name: 'montant') double montant,
      @JsonKey(name: 'remarque') String? remarque,
      @JsonKey(name: 'produit') String? produit,
      @JsonKey(name: 'stock') int stock,
      @JsonKey(name: 'quantite') String? quantite,
      @JsonKey(name: 'produit_a_recuperer') String? produitARecuperer,
      @JsonKey(name: 'boutique') String? boutique,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'stop_desk') int? stopDesk,
      @JsonKey(name: 'weight') double? weight,
      @JsonKey(name: 'fragile') int? fragile,
      @JsonKey(name: 'can_open') int? canOpen});
}

/// @nodoc
class _$EchotrakOrderCreateRequestCopyWithImpl<$Res,
        $Val extends EchotrakOrderCreateRequest>
    implements $EchotrakOrderCreateRequestCopyWith<$Res> {
  _$EchotrakOrderCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EchotrakOrderCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = freezed,
    Object? nomClient = null,
    Object? telephone = null,
    Object? telephone2 = freezed,
    Object? adresse = null,
    Object? codePostal = freezed,
    Object? commune = null,
    Object? codeWilaya = null,
    Object? montant = null,
    Object? remarque = freezed,
    Object? produit = freezed,
    Object? stock = null,
    Object? quantite = freezed,
    Object? produitARecuperer = freezed,
    Object? boutique = freezed,
    Object? type = null,
    Object? stopDesk = freezed,
    Object? weight = freezed,
    Object? fragile = freezed,
    Object? canOpen = freezed,
  }) {
    return _then(_value.copyWith(
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      nomClient: null == nomClient
          ? _value.nomClient
          : nomClient // ignore: cast_nullable_to_non_nullable
              as String,
      telephone: null == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      telephone2: freezed == telephone2
          ? _value.telephone2
          : telephone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      adresse: null == adresse
          ? _value.adresse
          : adresse // ignore: cast_nullable_to_non_nullable
              as String,
      codePostal: freezed == codePostal
          ? _value.codePostal
          : codePostal // ignore: cast_nullable_to_non_nullable
              as String?,
      commune: null == commune
          ? _value.commune
          : commune // ignore: cast_nullable_to_non_nullable
              as String,
      codeWilaya: null == codeWilaya
          ? _value.codeWilaya
          : codeWilaya // ignore: cast_nullable_to_non_nullable
              as int,
      montant: null == montant
          ? _value.montant
          : montant // ignore: cast_nullable_to_non_nullable
              as double,
      remarque: freezed == remarque
          ? _value.remarque
          : remarque // ignore: cast_nullable_to_non_nullable
              as String?,
      produit: freezed == produit
          ? _value.produit
          : produit // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      quantite: freezed == quantite
          ? _value.quantite
          : quantite // ignore: cast_nullable_to_non_nullable
              as String?,
      produitARecuperer: freezed == produitARecuperer
          ? _value.produitARecuperer
          : produitARecuperer // ignore: cast_nullable_to_non_nullable
              as String?,
      boutique: freezed == boutique
          ? _value.boutique
          : boutique // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      stopDesk: freezed == stopDesk
          ? _value.stopDesk
          : stopDesk // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      fragile: freezed == fragile
          ? _value.fragile
          : fragile // ignore: cast_nullable_to_non_nullable
              as int?,
      canOpen: freezed == canOpen
          ? _value.canOpen
          : canOpen // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EchotrakOrderCreateRequestImplCopyWith<$Res>
    implements $EchotrakOrderCreateRequestCopyWith<$Res> {
  factory _$$EchotrakOrderCreateRequestImplCopyWith(
          _$EchotrakOrderCreateRequestImpl value,
          $Res Function(_$EchotrakOrderCreateRequestImpl) then) =
      __$$EchotrakOrderCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reference') String? reference,
      @JsonKey(name: 'nom_client') String nomClient,
      @JsonKey(name: 'telephone') String telephone,
      @JsonKey(name: 'telephone_2') String? telephone2,
      @JsonKey(name: 'adresse') String adresse,
      @JsonKey(name: 'code_postal') String? codePostal,
      @JsonKey(name: 'commune') String commune,
      @JsonKey(name: 'code_wilaya') int codeWilaya,
      @JsonKey(name: 'montant') double montant,
      @JsonKey(name: 'remarque') String? remarque,
      @JsonKey(name: 'produit') String? produit,
      @JsonKey(name: 'stock') int stock,
      @JsonKey(name: 'quantite') String? quantite,
      @JsonKey(name: 'produit_a_recuperer') String? produitARecuperer,
      @JsonKey(name: 'boutique') String? boutique,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'stop_desk') int? stopDesk,
      @JsonKey(name: 'weight') double? weight,
      @JsonKey(name: 'fragile') int? fragile,
      @JsonKey(name: 'can_open') int? canOpen});
}

/// @nodoc
class __$$EchotrakOrderCreateRequestImplCopyWithImpl<$Res>
    extends _$EchotrakOrderCreateRequestCopyWithImpl<$Res,
        _$EchotrakOrderCreateRequestImpl>
    implements _$$EchotrakOrderCreateRequestImplCopyWith<$Res> {
  __$$EchotrakOrderCreateRequestImplCopyWithImpl(
      _$EchotrakOrderCreateRequestImpl _value,
      $Res Function(_$EchotrakOrderCreateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of EchotrakOrderCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = freezed,
    Object? nomClient = null,
    Object? telephone = null,
    Object? telephone2 = freezed,
    Object? adresse = null,
    Object? codePostal = freezed,
    Object? commune = null,
    Object? codeWilaya = null,
    Object? montant = null,
    Object? remarque = freezed,
    Object? produit = freezed,
    Object? stock = null,
    Object? quantite = freezed,
    Object? produitARecuperer = freezed,
    Object? boutique = freezed,
    Object? type = null,
    Object? stopDesk = freezed,
    Object? weight = freezed,
    Object? fragile = freezed,
    Object? canOpen = freezed,
  }) {
    return _then(_$EchotrakOrderCreateRequestImpl(
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      nomClient: null == nomClient
          ? _value.nomClient
          : nomClient // ignore: cast_nullable_to_non_nullable
              as String,
      telephone: null == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      telephone2: freezed == telephone2
          ? _value.telephone2
          : telephone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      adresse: null == adresse
          ? _value.adresse
          : adresse // ignore: cast_nullable_to_non_nullable
              as String,
      codePostal: freezed == codePostal
          ? _value.codePostal
          : codePostal // ignore: cast_nullable_to_non_nullable
              as String?,
      commune: null == commune
          ? _value.commune
          : commune // ignore: cast_nullable_to_non_nullable
              as String,
      codeWilaya: null == codeWilaya
          ? _value.codeWilaya
          : codeWilaya // ignore: cast_nullable_to_non_nullable
              as int,
      montant: null == montant
          ? _value.montant
          : montant // ignore: cast_nullable_to_non_nullable
              as double,
      remarque: freezed == remarque
          ? _value.remarque
          : remarque // ignore: cast_nullable_to_non_nullable
              as String?,
      produit: freezed == produit
          ? _value.produit
          : produit // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      quantite: freezed == quantite
          ? _value.quantite
          : quantite // ignore: cast_nullable_to_non_nullable
              as String?,
      produitARecuperer: freezed == produitARecuperer
          ? _value.produitARecuperer
          : produitARecuperer // ignore: cast_nullable_to_non_nullable
              as String?,
      boutique: freezed == boutique
          ? _value.boutique
          : boutique // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      stopDesk: freezed == stopDesk
          ? _value.stopDesk
          : stopDesk // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      fragile: freezed == fragile
          ? _value.fragile
          : fragile // ignore: cast_nullable_to_non_nullable
              as int?,
      canOpen: freezed == canOpen
          ? _value.canOpen
          : canOpen // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EchotrakOrderCreateRequestImpl extends _EchotrakOrderCreateRequest {
  const _$EchotrakOrderCreateRequestImpl(
      {@JsonKey(name: 'reference') this.reference,
      @JsonKey(name: 'nom_client') required this.nomClient,
      @JsonKey(name: 'telephone') required this.telephone,
      @JsonKey(name: 'telephone_2') this.telephone2,
      @JsonKey(name: 'adresse') required this.adresse,
      @JsonKey(name: 'code_postal') this.codePostal,
      @JsonKey(name: 'commune') required this.commune,
      @JsonKey(name: 'code_wilaya') required this.codeWilaya,
      @JsonKey(name: 'montant') required this.montant,
      @JsonKey(name: 'remarque') this.remarque,
      @JsonKey(name: 'produit') this.produit,
      @JsonKey(name: 'stock') required this.stock,
      @JsonKey(name: 'quantite') this.quantite,
      @JsonKey(name: 'produit_a_recuperer') this.produitARecuperer,
      @JsonKey(name: 'boutique') this.boutique,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'stop_desk') this.stopDesk,
      @JsonKey(name: 'weight') this.weight,
      @JsonKey(name: 'fragile') this.fragile,
      @JsonKey(name: 'can_open') this.canOpen})
      : super._();

  factory _$EchotrakOrderCreateRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EchotrakOrderCreateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'reference')
  final String? reference;
  @override
  @JsonKey(name: 'nom_client')
  final String nomClient;
  @override
  @JsonKey(name: 'telephone')
  final String telephone;
  @override
  @JsonKey(name: 'telephone_2')
  final String? telephone2;
  @override
  @JsonKey(name: 'adresse')
  final String adresse;
  @override
  @JsonKey(name: 'code_postal')
  final String? codePostal;
  @override
  @JsonKey(name: 'commune')
  final String commune;
  @override
  @JsonKey(name: 'code_wilaya')
  final int codeWilaya;
  @override
  @JsonKey(name: 'montant')
  final double montant;
  @override
  @JsonKey(name: 'remarque')
  final String? remarque;
  @override
  @JsonKey(name: 'produit')
  final String? produit;
  @override
  @JsonKey(name: 'stock')
  final int stock;
  @override
  @JsonKey(name: 'quantite')
  final String? quantite;
  @override
  @JsonKey(name: 'produit_a_recuperer')
  final String? produitARecuperer;
  @override
  @JsonKey(name: 'boutique')
  final String? boutique;
  @override
  @JsonKey(name: 'type')
  final int type;
  @override
  @JsonKey(name: 'stop_desk')
  final int? stopDesk;
  @override
  @JsonKey(name: 'weight')
  final double? weight;
  @override
  @JsonKey(name: 'fragile')
  final int? fragile;
  @override
  @JsonKey(name: 'can_open')
  final int? canOpen;

  @override
  String toString() {
    return 'EchotrakOrderCreateRequest(reference: $reference, nomClient: $nomClient, telephone: $telephone, telephone2: $telephone2, adresse: $adresse, codePostal: $codePostal, commune: $commune, codeWilaya: $codeWilaya, montant: $montant, remarque: $remarque, produit: $produit, stock: $stock, quantite: $quantite, produitARecuperer: $produitARecuperer, boutique: $boutique, type: $type, stopDesk: $stopDesk, weight: $weight, fragile: $fragile, canOpen: $canOpen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EchotrakOrderCreateRequestImpl &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.nomClient, nomClient) ||
                other.nomClient == nomClient) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.telephone2, telephone2) ||
                other.telephone2 == telephone2) &&
            (identical(other.adresse, adresse) || other.adresse == adresse) &&
            (identical(other.codePostal, codePostal) ||
                other.codePostal == codePostal) &&
            (identical(other.commune, commune) || other.commune == commune) &&
            (identical(other.codeWilaya, codeWilaya) ||
                other.codeWilaya == codeWilaya) &&
            (identical(other.montant, montant) || other.montant == montant) &&
            (identical(other.remarque, remarque) ||
                other.remarque == remarque) &&
            (identical(other.produit, produit) || other.produit == produit) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.quantite, quantite) ||
                other.quantite == quantite) &&
            (identical(other.produitARecuperer, produitARecuperer) ||
                other.produitARecuperer == produitARecuperer) &&
            (identical(other.boutique, boutique) ||
                other.boutique == boutique) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.stopDesk, stopDesk) ||
                other.stopDesk == stopDesk) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.fragile, fragile) || other.fragile == fragile) &&
            (identical(other.canOpen, canOpen) || other.canOpen == canOpen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        reference,
        nomClient,
        telephone,
        telephone2,
        adresse,
        codePostal,
        commune,
        codeWilaya,
        montant,
        remarque,
        produit,
        stock,
        quantite,
        produitARecuperer,
        boutique,
        type,
        stopDesk,
        weight,
        fragile,
        canOpen
      ]);

  /// Create a copy of EchotrakOrderCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EchotrakOrderCreateRequestImplCopyWith<_$EchotrakOrderCreateRequestImpl>
      get copyWith => __$$EchotrakOrderCreateRequestImplCopyWithImpl<
          _$EchotrakOrderCreateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EchotrakOrderCreateRequestImplToJson(
      this,
    );
  }
}

abstract class _EchotrakOrderCreateRequest extends EchotrakOrderCreateRequest {
  const factory _EchotrakOrderCreateRequest(
          {@JsonKey(name: 'reference') final String? reference,
          @JsonKey(name: 'nom_client') required final String nomClient,
          @JsonKey(name: 'telephone') required final String telephone,
          @JsonKey(name: 'telephone_2') final String? telephone2,
          @JsonKey(name: 'adresse') required final String adresse,
          @JsonKey(name: 'code_postal') final String? codePostal,
          @JsonKey(name: 'commune') required final String commune,
          @JsonKey(name: 'code_wilaya') required final int codeWilaya,
          @JsonKey(name: 'montant') required final double montant,
          @JsonKey(name: 'remarque') final String? remarque,
          @JsonKey(name: 'produit') final String? produit,
          @JsonKey(name: 'stock') required final int stock,
          @JsonKey(name: 'quantite') final String? quantite,
          @JsonKey(name: 'produit_a_recuperer') final String? produitARecuperer,
          @JsonKey(name: 'boutique') final String? boutique,
          @JsonKey(name: 'type') required final int type,
          @JsonKey(name: 'stop_desk') final int? stopDesk,
          @JsonKey(name: 'weight') final double? weight,
          @JsonKey(name: 'fragile') final int? fragile,
          @JsonKey(name: 'can_open') final int? canOpen}) =
      _$EchotrakOrderCreateRequestImpl;
  const _EchotrakOrderCreateRequest._() : super._();

  factory _EchotrakOrderCreateRequest.fromJson(Map<String, dynamic> json) =
      _$EchotrakOrderCreateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'reference')
  String? get reference;
  @override
  @JsonKey(name: 'nom_client')
  String get nomClient;
  @override
  @JsonKey(name: 'telephone')
  String get telephone;
  @override
  @JsonKey(name: 'telephone_2')
  String? get telephone2;
  @override
  @JsonKey(name: 'adresse')
  String get adresse;
  @override
  @JsonKey(name: 'code_postal')
  String? get codePostal;
  @override
  @JsonKey(name: 'commune')
  String get commune;
  @override
  @JsonKey(name: 'code_wilaya')
  int get codeWilaya;
  @override
  @JsonKey(name: 'montant')
  double get montant;
  @override
  @JsonKey(name: 'remarque')
  String? get remarque;
  @override
  @JsonKey(name: 'produit')
  String? get produit;
  @override
  @JsonKey(name: 'stock')
  int get stock;
  @override
  @JsonKey(name: 'quantite')
  String? get quantite;
  @override
  @JsonKey(name: 'produit_a_recuperer')
  String? get produitARecuperer;
  @override
  @JsonKey(name: 'boutique')
  String? get boutique;
  @override
  @JsonKey(name: 'type')
  int get type;
  @override
  @JsonKey(name: 'stop_desk')
  int? get stopDesk;
  @override
  @JsonKey(name: 'weight')
  double? get weight;
  @override
  @JsonKey(name: 'fragile')
  int? get fragile;
  @override
  @JsonKey(name: 'can_open')
  int? get canOpen;

  /// Create a copy of EchotrakOrderCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EchotrakOrderCreateRequestImplCopyWith<_$EchotrakOrderCreateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
