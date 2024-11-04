part of 'uploader_cubit.dart';

@freezed
class UploaderState with _$UploaderState {
  const factory UploaderState.initial() = UploaderInitialState;
  // uploading
  const factory UploaderState.uploading({
    required double progress,
    List<String>? urls,
  }) = UploaderUploadingState;
  // uploaded
  const factory UploaderState.uploaded({
    required List<String> urls,
  }) = UploaderUploadedState;
  // error
  const factory UploaderState.error({
    required String message,
  }) = UploaderErrorState;
}
