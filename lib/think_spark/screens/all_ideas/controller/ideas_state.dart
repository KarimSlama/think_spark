import 'package:freezed_annotation/freezed_annotation.dart';
part 'ideas_state.freezed.dart';

@freezed
class IdeasState with _$IdeasState{
  const factory IdeasState.initial() = _Initial;
  const factory IdeasState.loading() = Loading;
  const factory IdeasState.changed({required bool isChanged}) = Changed;
}