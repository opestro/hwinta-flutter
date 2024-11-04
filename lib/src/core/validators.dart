import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/src/core/strings.dart';
import 'package:flutter/material.dart';

// slugValidator
String? Function(String?) slugValidator(BuildContext context) {
  return (value) {
    if (value?.nullIfEmpty == null) return null;
    // regex for domain name
    // start with letters after that cb contain letters or numbers or -
    final regex = RegExp(r"^[a-z]+[a-z0-9-]*$");
    if (!regex.hasMatch(value!)) {
      return t.stores.fields.slug.validation;
    }
  };
}

// use this regex  ^(((?!-))(xn--|_)?[a-z0-9-]{0,61}[a-z0-9]{1,1}\.)*(xn--)?([a-z0-9][a-z0-9\-]{0,60}|[a-z0-9-]{1,30}\.[a-z]{2,})$
String? Function(String?) domainValidator(BuildContext context) {
  return (value) {
    if (value?.nullIfEmpty == null) return null;
    // regex for domain name
    // start with letters after that cb contain letters or numbers or -
    final regex = RegExp(r"^(((?!-))(xn--|_)?[a-z0-9-]{0,61}[a-z0-9]{1,1}\.)*(xn--)?([a-z0-9][a-z0-9\-]{0,60}|[a-z0-9-]{1,30}\.[a-z]{2,})$");
    if (!regex.hasMatch(value!)) {
      return t.stores.fields.slug.validation;
    }
  };
}
