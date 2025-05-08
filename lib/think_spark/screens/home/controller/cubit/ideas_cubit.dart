import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/loaders/popus.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_state.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_response.dart';
import 'package:think_spark/think_spark/screens/home/data/repository/idea_repository.dart';
import 'package:speech_to_text/speech_to_text.dart';

class IdeasCubit extends Cubit<IdeasState> {
  final IdeaRepository _ideaRepository;
  IdeasCubit(this._ideaRepository) : super(IdeasState.initial());

  List<IdeaResponse> ideasList = [];
  final searchController = TextEditingController();
  bool isCategoryRow = true;
  final SpeechToText speech = SpeechToText();
  bool _speechEnabled = false;

  void fetchAllIdeas() async {
    emit(IdeasState.loading());

    final result = await _ideaRepository.fetchIdeasAndFavorites();

    result.when(success: (ideas) {
      ideasList = ideas;
      emit(IdeasState.success(ideas));
    }, failure: (error) {
      emit(IdeasState.error(error: error.apiErrorModel.message.toString()));
    });
  }

  changeCategoryIcon() {
    isCategoryRow = !isCategoryRow;
    emit(IdeasState.dsplayRow(isRow: isCategoryRow));
  }

  Future<void> initializeSpeech() async {
    _speechEnabled = await speech.initialize();
    if (!_speechEnabled) {
      emit(IdeasState.error(error: 'Error initializing speech'));
    }
  }

  Future<void> toggleRecording() async {
    if (speech.isListening) {
      await speech.stop();
      emit(IdeasState.recordingStopped());
    } else {
      if (!_speechEnabled) {
        await initializeSpeech();
      }

      emit(IdeasState.showRecordingUI());

      await speech.listen(
        onResult: (result) async {
          if (result.finalResult) {
            Loaders.sparkToast(message: result.recognizedWords);
            await searchIdeas();
          }
        },
      );

      emit(IdeasState.recordingInProgress());
    }
  }

  Future<void> searchIdeas() async {
    emit(IdeasState.loading());
    final result = await _ideaRepository.searchIdeas(searchController.text);
    result.when(success: (ideas) {
      ideasList = ideas;
      emit(IdeasState.success(ideas));
      return ideas;
    }, failure: (error) {
      emit(IdeasState.error(error: error.apiErrorModel.message.toString()));
    });
  }

  
}
