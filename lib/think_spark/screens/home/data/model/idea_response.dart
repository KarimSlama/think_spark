import 'package:json_annotation/json_annotation.dart';
part 'idea_response.g.dart';

@JsonSerializable()
class IdeaResponse {
  final int id;
  final String title;
  final List<Categories> categories;
  final String publisher;
  final String location;
  final String problems;
  final String solutions;
  @JsonKey(name: 'why_it_works')
  final String whyItWorks;
  final String benifits;
  final String image;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  bool isFavorite;
  bool isBeingRemoved;


  IdeaResponse( {
    required this.id,
    required this.title,
    required this.categories,
    required this.publisher,
    required this.location,
    required this.problems,
    required this.solutions,
    required this.whyItWorks,
    required this.benifits,
    required this.image,
    required this.createdAt,
    this.isFavorite = false,
    this.isBeingRemoved = false,
  });

  factory IdeaResponse.fromJson(Map<String, dynamic> json) =>
      _$IdeaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$IdeaResponseToJson(this);

  IdeaResponse copyWith({bool? isFavorite, bool? isBeingRemoved}) {
    return IdeaResponse(
      id: id,
      title: title,
      categories: categories,
      publisher: publisher,
      location: location,
      problems: problems,
      solutions: solutions,
      whyItWorks: whyItWorks,
      benifits: benifits,
      image: image,
      createdAt: createdAt,
      isFavorite: isFavorite ?? this.isFavorite,
      isBeingRemoved: isBeingRemoved ?? this.isBeingRemoved,
    );
  }
}

@JsonSerializable()
class Categories {
  final int id;
  final String name;
  final String type;

  Categories({required this.id, required this.name, required this.type});

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}
