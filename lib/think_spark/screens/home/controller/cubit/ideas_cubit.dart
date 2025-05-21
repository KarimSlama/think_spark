import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/widgets/loaders/popus.dart';
import 'package:think_spark/think_spark/screens/home/controller/cubit/ideas_state.dart';
import 'package:think_spark/think_spark/screens/home/data/model/idea_request_body.dart';
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
  final titleController = TextEditingController();
  final problemController = TextEditingController();
  final solutionsController = TextEditingController();
  final whyItWorksController = TextEditingController();
  final benifitsController = TextEditingController();
  final technicalRequirementsController = TextEditingController();
  final operationalRequirementsController = TextEditingController();
  final teamController = TextEditingController();
  final expectedDurationController = TextEditingController();

  void fetchAllIdeas() async {
    emit(IdeasState.loading());

    final result = await _ideaRepository.fetchIdeasAndFavorites();

    result.when(success: (ideas) {
      ideasList = ideas;
      for (var idea in ideasList) {
        initializeFields(idea);
      }
      emit(IdeasState.success(ideas));
    }, failure: (error) {
      emit(IdeasState.error(error: error.apiErrorModel.message.toString()));
    });
  }

  void initializeFields(IdeaResponse idea) {
    titleController.text = idea.title;
    problemController.text = idea.tabs.description.problems;
    solutionsController.text = idea.tabs.description.solutions;
    whyItWorksController.text = idea.tabs.description.whyItWorks;
    benifitsController.text = idea.tabs.description.benifits;
    technicalRequirementsController.text = idea.tabs.requirements.technical;
    operationalRequirementsController.text = idea.tabs.requirements.operational;
    teamController.text = idea.tabs.requirements.team;
    expectedDurationController.text = idea.tabs.requirements.expectedDuration;
  }

  updateIdea(ideaId) async {
    emit(IdeasState.loading());
    final ideaRequestBody = IdeaRequestBody(
      title: titleController.text,
      tabs: Tabs(
        description: Description(
            problems: problemController.text,
            solutions: solutionsController.text,
            whyItWorks: whyItWorksController.text,
            benifits: benifitsController.text),
        requirements: Requirements(
            technical: technicalRequirementsController.text,
            operational: operationalRequirementsController.text,
            team: teamController.text,
            expectedDuration: expectedDurationController.text),
      ),
    );
    
    final result = await _ideaRepository.updateIdea(ideaId, ideaRequestBody);
    return result.when(success: (updatedIdea) {
      final updatedIdeas = ideasList.map((idea) {
        if (idea.id == updatedIdea.id) {
          return updatedIdea;
        }
        return idea;
      }).toList();
      ideasList = updatedIdeas;
      emit(IdeasState.updateSuccess(updatedIdea));
      emit(IdeasState.success(updatedIdeas));
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
