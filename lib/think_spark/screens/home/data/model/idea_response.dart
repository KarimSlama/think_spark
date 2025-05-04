import 'package:json_annotation/json_annotation.dart';

part 'idea_response.g.dart';

@JsonSerializable()
class IdeaResponse {
  final int id;
  final String title;
  final List<Category> categories;
  final String location;
  @JsonKey(name: 'idea_images')
  final String? ideaImage;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final User user;
  final Tabs tabs;

  bool isFavorite;
  bool isBeingRemoved;

  IdeaResponse({
    required this.id,
    required this.title,
    required this.categories,
    required this.location,
    this.ideaImage,
    required this.createdAt,
    required this.user,
    required this.tabs,
    this.isFavorite = false,
    this.isBeingRemoved = false,
  });

  factory IdeaResponse.fromJson(Map<String, dynamic> json) =>
      _$IdeaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$IdeaResponseToJson(this);

  IdeaResponse copyWith({
    bool? isFavorite,
    bool? isBeingRemoved,
    String? ideaImage,
  }) {
    return IdeaResponse(
      id: id,
      title: title,
      categories: categories,
      location: location,
      ideaImage: ideaImage ?? this.ideaImage,
      createdAt: createdAt,
      user: user,
      tabs: tabs,
      isFavorite: isFavorite ?? this.isFavorite,
      isBeingRemoved: isBeingRemoved ?? this.isBeingRemoved,
    );
  }
}

@JsonSerializable()
class User {
  final int id;
  final String username;
  final String email;
  final String? image;
  final String? bio;

  User({
    required this.id,
    required this.username,
    required this.email,
    this.image,
    this.bio,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}


@JsonSerializable()
class Category {
  final int id;
  final String name;
  final String type;

  Category({
    required this.id,
    required this.name,
    required this.type,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class Tabs {
  final Description description;
  final Requirements requirements;

  Tabs({
    required this.description,
    required this.requirements,
  });

  factory Tabs.fromJson(Map<String, dynamic> json) => _$TabsFromJson(json);

  Map<String, dynamic> toJson() => _$TabsToJson(this);
}

@JsonSerializable()
class Description {
  final String problems;
  final String solutions;
  @JsonKey(name: 'why_it_works')
  final String whyItWorks;
  final String benifits;

  Description({
    required this.problems,
    required this.solutions,
    required this.whyItWorks,
    required this.benifits,
  });

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$DescriptionToJson(this);
}

@JsonSerializable()
class Requirements {
  final String technical;
  final String operational;
  final String team;
  @JsonKey(name: 'expected_duration')
  final String expectedDuration;

  Requirements({
    required this.technical,
    required this.operational,
    required this.team,
    required this.expectedDuration,
  });

  factory Requirements.fromJson(Map<String, dynamic> json) =>
      _$RequirementsFromJson(json);

  Map<String, dynamic> toJson() => _$RequirementsToJson(this);
}
