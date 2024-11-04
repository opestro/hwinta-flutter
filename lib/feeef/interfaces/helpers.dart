abstract class Model implements ModelId, ModelTimestamps {}

abstract class ModelCreate implements ModelToJson {}

abstract class ModelUpdate implements ModelToJson {
  List<String> get setToNull;
}

// toUpdateJson, remove null values if not in setToNull
extension ModelUpdateToJson on ModelUpdate {
  Map<String, dynamic> toUpdateJson() {
    final json = toJson();
    final setToNull = this.setToNull;
    return json.keys.fold<Map<String, dynamic>>({}, (acc, key) {
      if (json[key] == null && !setToNull.contains(key)) {
        return acc;
      }
      return {
        ...acc,
        key: json[key]
      };
    });
  }
}

abstract class ModelId {
  String get id;
}

abstract class ModelTimestamps {
  DateTime get createdAt;
  DateTime get updatedAt;
}

abstract class ModelMetadata {
  Map<String, dynamic> get metadata;
}

abstract class ModelToJson {
  Map<String, dynamic> toJson();
}

// ModelAuthChangePassword
abstract class ModelAuthChangePassword {
  String get oldPassword;
  String get newPassword;
}
