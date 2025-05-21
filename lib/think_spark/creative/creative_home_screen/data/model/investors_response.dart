import 'package:freezed_annotation/freezed_annotation.dart';
part 'investors_response.g.dart';

@JsonSerializable()
class InvestorsResponse {
  final List<Investor> investors;
  InvestorsResponse({required this.investors});
  factory InvestorsResponse.fromJson(Map<String, dynamic> json) =>
      _$InvestorsResponseFromJson(json);
}

@JsonSerializable()
class Investor {
  final int id;
  final String username;
  final String email;
  final String bio;
  final String image;

  Investor(
      {required this.id,
      required this.username,
      required this.email,
      required this.bio,
      required this.image});

  factory Investor.fromJson(Map<String, dynamic> json) =>
      _$InvestorFromJson(json);
}
