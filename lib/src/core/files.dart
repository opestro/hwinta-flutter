import 'dart:convert';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:file_saver/file_saver.dart';
import 'package:lib/utils/platforms.dart';
import 'package:csv/csv.dart';
import 'package:universal_io/io.dart';

/// [saveStringToFile] saves a string file to the device
Future<String?> saveStringToFile({
  /// [name] is the name of the file with the extension
  required String name,
  required String data,
  required MimeType mimeType,
}) async {
  // var rawAsBytes = Uint16List.fromList(data.codeUnits);
  var rawAsBytes = const Utf8Codec(allowMalformed: true).encode(data);
  String? dir;
  if (Platforms.isWeb) {
    dir = await FileSaver.instance.saveFile(bytes: rawAsBytes.buffer.asUint8List(), mimeType: mimeType, name: name);
  } else {
    dir = await FilePicker.platform.saveFile(
      fileName: name,
      type: FileType.custom,
      allowedExtensions: [
        mimeType.name
      ],
      lockParentWindow: true,
    );
    if (dir != null) {
      var file = File(dir);
      await file.writeAsBytes(rawAsBytes);
    }
  }
  return dir;
}

/// [saveBytesFile] saves a bytes file to the device
Future<String> saveBytesFile({
  /// [name] is the name of the file with the extension
  required String name,
  required Uint8List bytes,
  required MimeType mimeType,
}) async {
  String fileName;
  var tokens = name.split(".");
  // example (hello.1.csv) => (hello.1, csv)
  // the last token is the extension (if exists, if not, it's empty)
  var ext = tokens.length > 1 ? tokens.last : "";
  if (ext.isEmpty) {
    fileName = name;
  } else {
    tokens.removeLast();
    fileName = tokens.join(".");
  }
  String? dir;
  if (!Platforms.isWeb) {
    dir = await FileSaver.instance.saveFile(
      bytes: bytes,
      mimeType: mimeType,
      name: fileName,
      ext: ext,
    );
  } else {
    dir = await FileSaver.instance.saveAs(
      bytes: bytes,
      mimeType: mimeType,
      name: fileName,
      ext: ext,
    );
  }
  if (dir == null) {
    throw Exception("Failed to save file");
  }
  return dir;
}

// [saveCsvFile] saves a csv file to the device from List<List<dynamic>> usin csv package
Future<String?> saveCsvFile({
  /// [name] is the name of the file with the extension
  required String name,
  required List<List<dynamic>> data,
}) async {
  String fileName;
  var tokens = name.split(".");
  // example (hello.1.csv) => (hello.1, csv)
  // the last token is the extension (if exists, if not, it's empty)
  var ext = tokens.length > 1 ? tokens.last : "";
  if (ext.isEmpty) {
    fileName = name;
  } else {
    tokens.removeLast();
    fileName = tokens.join(".");
  }
  // var csv = const ListToCsvConverter().convert(data);
  // must be read in microsoft excel
  var csv = const ListToCsvConverter().convert(data);
  return saveStringToFile(
    name: "$fileName.csv",
    data: csv,
    mimeType: MimeType.csv,
  );
}
