// widget [UploadProvider]
import 'package:feeef_marchant/src/uploader/cubit/uploader_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Uploader extends StatelessWidget {
  final Widget Function(BuildContext context, UploaderState state) builder;
  // onUploaded
  final void Function(BuildContext context, List<String> urls)? onUploaded;
  const Uploader({
    super.key,
    required this.builder,
    this.onUploaded,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UploaderCubit(),
      child: BlocConsumer<UploaderCubit, UploaderState>(
        listener: (context, state) {
          if (state is UploaderUploadedState && onUploaded != null) {
            onUploaded!(context, state.urls);
          }
        },
        builder: builder,
      ),
    );
  }
}
