// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EchotrakOrderCreateRequestImpl _$$EchotrakOrderCreateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EchotrakOrderCreateRequestImpl(
      reference: json['reference'] as String?,
      nomClient: json['nom_client'] as String,
      telephone: json['telephone'] as String,
      telephone2: json['telephone_2'] as String?,
      adresse: json['adresse'] as String,
      codePostal: json['code_postal'] as String?,
      commune: json['commune'] as String,
      codeWilaya: (json['code_wilaya'] as num).toInt(),
      montant: (json['montant'] as num).toDouble(),
      remarque: json['remarque'] as String?,
      produit: json['produit'] as String?,
      stock: (json['stock'] as num).toInt(),
      quantite: json['quantite'] as String?,
      produitARecuperer: json['produit_a_recuperer'] as String?,
      boutique: json['boutique'] as String?,
      type: (json['type'] as num).toInt(),
      stopDesk: (json['stop_desk'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toDouble(),
      fragile: (json['fragile'] as num?)?.toInt(),
      canOpen: (json['can_open'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EchotrakOrderCreateRequestImplToJson(
        _$EchotrakOrderCreateRequestImpl instance) =>
    <String, dynamic>{
      'reference': instance.reference,
      'nom_client': instance.nomClient,
      'telephone': instance.telephone,
      'telephone_2': instance.telephone2,
      'adresse': instance.adresse,
      'code_postal': instance.codePostal,
      'commune': instance.commune,
      'code_wilaya': instance.codeWilaya,
      'montant': instance.montant,
      'remarque': instance.remarque,
      'produit': instance.produit,
      'stock': instance.stock,
      'quantite': instance.quantite,
      'produit_a_recuperer': instance.produitARecuperer,
      'boutique': instance.boutique,
      'type': instance.type,
      'stop_desk': instance.stopDesk,
      'weight': instance.weight,
      'fragile': instance.fragile,
      'can_open': instance.canOpen,
    };
