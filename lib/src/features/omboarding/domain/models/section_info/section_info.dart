import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_info.freezed.dart';
part 'section_info.g.dart';

@freezed
class SectionInfo with _$SectionInfo {
  factory SectionInfo({
    required String image,
    required String phrase,
    required String details,
  }) = _SectionInfo;

  factory SectionInfo.fromJson(Map<String, dynamic> json) => _$SectionInfoFromJson(json);
}
