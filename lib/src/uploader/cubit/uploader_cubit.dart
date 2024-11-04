import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/src/auth/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pro_image_editor/pro_image_editor.dart';

part 'uploader_state.dart';
part 'uploader_cubit.freezed.dart';

class UploaderCubit extends Cubit<UploaderState> {
  UploaderCubit() : super(const UploaderState.initial());

  // cancel token
  final _cancelToken = CancelToken();

  void upload({
    bool allowCompression = true,
    int? maxWidth,
    int? maxHeight,
    required String? folder,
    int quality = 80,
    bool allowMultiple = false,
  }) async {
    emit(const UploaderState.uploading(progress: 0, urls: null));
    try {
      final urls = await pickImageAndUpload(
        allowMultiple: allowMultiple,
        allowCompression: allowCompression,
        maxHeight: maxHeight,
        maxWidth: maxWidth,
        folder: folder,
        quality: quality,
        cancelToken: _cancelToken,
        onProgress: (sent, total) {
          emit(UploaderState.uploading(
            progress: sent / total,
            urls: null,
          ));
        },
      );
      emit(UploaderState.uploaded(urls: urls!));
    } catch (e) {
      emit(UploaderState.error(message: e.toString()));
    }
  }

  void uploadImageByte(Uint8List bytes) async {
    emit(const UploaderState.uploading(progress: 0, urls: null));
    try {
      final url = await uploadImageByteToServer(
        bytes,
        cancelToken: _cancelToken,
        onProgress: (sent, total) {
          emit(UploaderState.uploading(
            progress: sent / total,
            urls: null,
          ));
        },
      );
      emit(UploaderState.uploaded(urls: [
        url!
      ]));
    } catch (e) {
      emit(UploaderState.error(message: e.toString()));
    }
  }

  // cancel upload
  void cancel() {
    _cancelToken.cancel();
    emit(const UploaderState.initial());
  }

  // delete uploaded image
  void delete() {
    emit(const UploaderState.initial());
  }
}

class ImagePickerAndUploader extends StatefulWidget {
  final bool allowCompression;
  final String? initialValue;
  final void Function(String url) onUpload;
  final void Function()? onCancel;
  final Widget? cuption;
  final int? maxWidth;
  final int? maxHeight;
  final String? folder;
  final int quality;
  const ImagePickerAndUploader({super.key, this.folder, this.quality = 80, this.maxHeight, this.maxWidth, this.allowCompression = true, this.initialValue, required this.onUpload, this.onCancel, this.cuption});

  @override
  State<ImagePickerAndUploader> createState() => _ImagePickerAndUploaderState();
}

class _ImagePickerAndUploaderState extends State<ImagePickerAndUploader> {
  final _cubit = UploaderCubit();

  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) {
      _cubit.emit(UploaderState.uploaded(urls: [
        widget.initialValue!
      ]));
    }
  }

  void _openEditor(String url) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProImageEditor.network(
          url,
          onImageEditingComplete: (byte) async {
            _cubit.uploadImageByte(byte);
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card.outlined(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: Theme.of(context).colorScheme.onPrimary,
            width: 1,
          ),
        ),
        child: Container(
          // max height
          constraints: const BoxConstraints(maxWidth: 200),
          padding: const EdgeInsets.all(8.0),
          child: BlocProvider.value(
            value: _cubit,
            child: BlocConsumer<UploaderCubit, UploaderState>(
              listener: (context, state) {
                if (state is UploaderUploadedState) {
                  widget.onUpload(state.urls.first);
                  context.showSuccessSnackBar(
                    const Text('تم الرفع بنجاح'),
                  );
                } else if (state is UploaderErrorState) {
                  context.showErrorSnackBar(
                    Text(state.message),
                  );
                } else if (state is UploaderInitialState && widget.onCancel != null) {
                  widget.onCancel!();
                  context.showWarningSnackBar(
                    const Text('تم الغاء الرفع'),
                  );
                }
              },
              builder: (context, state) {
                if (state is UploaderUploadingState) {
                  return Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: Center(child: LinearProgressIndicator(value: state.progress)),
                      ),
                      const SizedBox(height: 8),
                      // cancel
                      // ElevatedButton.icon(
                      //   onPressed: () => _cubit.cancel(),
                      //   label: const Text('Cancel'),
                      //   icon: const Icon(Icons.cancel),
                      // ),
                      Align(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: IconButton.filled(
                          onPressed: () => _cubit.cancel(),
                          icon: const Icon(Icons.cancel),
                        ),
                      ),
                    ],
                  );
                } else if (state is UploaderUploadedState) {
                  return Stack(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.network(state.urls.first, fit: BoxFit.contain),
                        ),
                      ),
                      // cancel
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: IconButton.filled(
                          onPressed: () => _cubit.delete(),
                          icon: const Icon(Icons.cancel),
                        ),
                      ),
                      // edit
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: IconButton.filled(
                          onPressed: () => _openEditor(state.urls.first),
                          icon: const Icon(Icons.edit),
                        ),
                      ),
                    ],
                  );
                } else if (state is UploaderErrorState) {
                  return Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: Center(child: Text(state.message)),
                      ),
                      // retry
                      Center(
                        child: IconButton.filled(
                          onPressed: () => _cubit.upload(
                            allowCompression: widget.allowCompression,
                            maxWidth: widget.maxWidth,
                            maxHeight: widget.maxHeight,
                            folder: widget.folder,
                            quality: widget.quality,
                          ),
                          icon: const Icon(Icons.refresh),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Ionicons.cloud_upload,
                              size: 48,
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 8),
                            DefaultTextStyle(
                              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.grey),
                              child: widget.cuption ??
                                  const Text(
                                    'رفع صورة',
                                    textAlign: TextAlign.center,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: IconButton.filled(
                          onPressed: () {
                            _cubit.upload(
                              allowCompression: widget.allowCompression,
                              maxWidth: widget.maxWidth,
                              maxHeight: widget.maxHeight,
                              folder: widget.folder,
                              quality: widget.quality,
                            );
                          },
                          icon: const Icon(Ionicons.cloud_upload_outline),
                        ),
                      )
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
