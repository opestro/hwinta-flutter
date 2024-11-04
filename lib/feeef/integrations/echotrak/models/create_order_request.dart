import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request.freezed.dart';
part 'create_order_request.g.dart';

@freezed
class EchotrakOrderCreateRequest with _$EchotrakOrderCreateRequest {
  const EchotrakOrderCreateRequest._();
  const  factory EchotrakOrderCreateRequest({
    @JsonKey(name: 'reference') String? reference,
    @JsonKey(name: 'nom_client') required String nomClient,
    @JsonKey(name: 'telephone') required String telephone,
    @JsonKey(name: 'telephone_2') String? telephone2,
    @JsonKey(name: 'adresse') required String adresse,
    @JsonKey(name: 'code_postal') String? codePostal,
    @JsonKey(name: 'commune') required String commune,
    @JsonKey(name: 'code_wilaya') required int codeWilaya,
    @JsonKey(name: 'montant') required double montant,
    @JsonKey(name: 'remarque') String? remarque,
    @JsonKey(name: 'produit') String? produit,
    @JsonKey(name: 'stock') required int stock,
    @JsonKey(name: 'quantite') String? quantite,
    @JsonKey(name: 'produit_a_recuperer') String? produitARecuperer,
    @JsonKey(name: 'boutique') String? boutique,
    @JsonKey(name: 'type') required int type,
    @JsonKey(name: 'stop_desk') int? stopDesk,
    @JsonKey(name: 'weight') double? weight,
    @JsonKey(name: 'fragile') int? fragile,
    @JsonKey(name: 'can_open') int? canOpen,
  }) = _EchotrakOrderCreateRequest;

  factory EchotrakOrderCreateRequest.fromJson(Map<String, dynamic> json) => _$EchotrakOrderCreateRequestFromJson(json);
}