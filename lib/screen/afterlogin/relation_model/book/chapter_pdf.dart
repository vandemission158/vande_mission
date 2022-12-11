// To parse this JSON data, do
//
//     final chapterPdf = chapterPdfFromJson(jsonString);

import 'dart:convert';

ChapterPdf chapterPdfFromJson(String? str) => ChapterPdf.fromJson(json.decode(str!));

String chapterPdfToJson(ChapterPdf data) => json.encode(data.toJson());

class ChapterPdf {
  ChapterPdf({
    this.fileName,
    this.filePath,
  });

  String? fileName;
  String? filePath;

  factory ChapterPdf.fromJson(Map<String, dynamic> json) => ChapterPdf(
        fileName: json["fileName"],
        filePath: json["filePath"],
      );

  Map<String, dynamic> toJson() => {
        "fileName": fileName,
        "filePath": filePath,
      };
}
