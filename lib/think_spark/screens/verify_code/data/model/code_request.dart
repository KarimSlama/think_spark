import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_request.g.dart';

@JsonSerializable()
class CodeRequest {
  final String code;
  final String identifier;

  CodeRequest({required this.code, required this.identifier});

    Map<String, dynamic> toJson() => _$CodeRequestToJson(this);

}
