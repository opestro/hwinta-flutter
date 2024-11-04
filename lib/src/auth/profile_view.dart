// ignore_for_file: use_build_context_synchronously

import 'dart:math';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:fast_image_resizer/fast_image_resizer.dart';
import 'package:feeef_marchant/feeef/auth/models/token.dart';
import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/users/models/user.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/main.dart';
import 'package:feeef_marchant/src/auth/auth_bloc.dart';
import 'package:feeef_marchant/src/core/enums.dart';
import 'package:feeef_marchant/src/core/strings.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
// import 'package:image_compression_flutter/image_compression_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:mime/mime.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  void _logout(BuildContext context) async {
    bool? confirme = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('تسجيل الخروج'),
          content: const Text('هل أنت متأكد من رغبتك في تسجيل الخروج؟'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text(t.general.cancel),
            ),
            // red outlined button
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
                    iconColor: WidgetStateProperty.all(Colors.red),
                    overlayColor: WidgetStateProperty.all(Colors.red.withOpacity(0.1)),
                  ),
              child: const Text('تسجيل الخروج', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );

    if (confirme == true) {
      context.read<AuthBloc>().add(const AuthSignout());
      context.read<AuthBloc>().add(const AuthClear());
      GoRouter.of(context).refresh();
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            // back to stores page
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.go('/stores');
              },
            ),
            title: const Text('حسابي'),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: SizedBox(
                width: forScreen(width: width, md: 600),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 16),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: state.auth?.user.photoUrl != null ? NetworkImage(state.auth!.user.photoUrl!) : null,
                        child: state.auth?.user.photoUrl == null
                            ? const Icon(
                                Ionicons.person,
                                size: 50,
                              )
                            : null,
                      ),
                      const SizedBox(height: 16),
                      // edit avatar button
                      FilledButton.tonalIcon(
                        icon: const Icon(Ionicons.camera, size: 16),
                        style: Theme.of(context).filledButtonTheme.style!.copyWith(
                              minimumSize: WidgetStateProperty.all(const Size(0, 0)),
                              padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 9, vertical: 8)),
                            ),
                        onPressed: _updatePhoto,
                        label: Text(t.general.edit),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            state.auth?.user.name ?? 'Guest',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          // verified badge
                          if (state.auth?.user.verifiedAt != null)
                            const Tooltip(
                              message: 'حساب موثق',
                              child: Icon(
                                Icons.verified,
                                // size: 16,
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Card.filled(
                        color: Theme.of(context).colorScheme.primary,
                        child: ListTile(
                          leading: Icon(Icons.security, color: Theme.of(context).colorScheme.onPrimary),
                          title: Text(
                            t.auth.user.alert.title,
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                          ),
                          subtitle: Text(
                            t.auth.user.alert.subtitle,
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                          ),
                        ),
                      ),
                      ListTile(
                        enabled: false,
                        leading: const Icon(Icons.person),
                        title: Text(t.auth.user.personalInfo),
                      ),
                      // outlimed card
                      Card.outlined(
                        child: Column(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.person),
                              title: TextOrFlag(state.auth?.user.name, flag: 'لم يتم اضافة اسم'),
                              subtitle: Text(t.users.fields.name.label),
                              trailing: IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return _EditNameDailog(
                                        initialValue: state.auth?.user.name,
                                        onSubmitted: _updateName,
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            const Padding(padding: EdgeInsetsDirectional.only(start: kMinInteractiveDimension), child: Divider()),
                            ListTile(
                              leading: const Icon(Icons.email),
                              title: TextOrFlag(state.auth?.user.email, flag: 'لم يتم اضافة بريد الكتروني'),
                              subtitle: Text(t.users.fields.email.label),
                              trailing: IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return _EditEmailDailog(
                                        initialValue: state.auth?.user.email,
                                        onSubmitted: _updateEmail,
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            const Padding(padding: EdgeInsetsDirectional.only(start: kMinInteractiveDimension), child: Divider()),
                            ListTile(
                              leading: const Icon(Icons.phone),
                              title: TextOrFlag(state.auth?.user.phone, flag: 'لم يتم اضافة رقم هاتف'),
                              subtitle: Text(t.users.fields.phone.label),
                              trailing: IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return _EditPhoneDailog(
                                        initialValue: state.auth?.user.phone,
                                        onSubmitted: _updatePhone,
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      ListTile(
                        enabled: false,
                        leading: const Icon(Icons.security),
                        title: Text(t.auth.user.securityAndSignin),
                      ),
                      // change password
                      Card.outlined(
                        child: Column(
                          children: [
                            // tokens list
                            if (false)
                              // ignore: dead_code
                              FutureBuilder<List<AccessToken>>(
                                future: ff.users.tokens(),
                                builder: (context, snapshot) {
                                  if (snapshot.data == null || snapshot.connectionState == ConnectionState.waiting) {
                                    return const Center(child: CircularProgressIndicator());
                                  }
                                  return Column(
                                    children: [
                                      for (var token in snapshot.data!)
                                        ListTile(
                                          leading: const Icon(Icons.vpn_key),
                                          title: Text("آخر استخدام: ${token.lastUsedAt == null ? "غير معروف" : timeago.format(token.lastUsedAt!)}"),
                                          subtitle: Text("lastUsedAt: ${token.lastUsedAt}"),
                                          trailing: IconButton(
                                            icon: const Icon(Icons.delete),
                                            onPressed: () async {
                                              // await fif.users.deleteToken(token.id);
                                              // context.showSuccessSnackBar(const Text('تم حذف الجلسة بنجاح'));
                                            },
                                          ),
                                        ),
                                    ],
                                  );
                                },
                              ),
                            ListTile(
                              leading: const Icon(Icons.lock),
                              title: const Text('تغيير كلمة المرور'),
                              subtitle: const Text('يمكنك تغيير كلمة المرور الخاصة بك'),
                              trailing: IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return _ChangePasswordDailog(
                                          onSubmitted: _updatePassword,
                                        );
                                      });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      // more
                      const ListTile(
                        enabled: false,
                        leading: Icon(Icons.more_horiz),
                        title: Text("أكثر"),
                      ),
                      // رمز الإحالة الخصة بي
                      Card.outlined(
                        child: ListTile(
                          leading: const Icon(Icons.share),
                          title: const Text('رمز الإحالة الخصة بي'),
                          subtitle: Text(state.auth?.user.id ?? 'لم يتم تعيين رمز الإحالة'),
                          trailing: IconButton(
                            icon: const Icon(Icons.copy),
                            onPressed: () {
                              Clipboard.setData(ClipboardData(text: state.auth?.user.id ?? 'لم يتم تعيين رمز الإحالة'));
                              context.showSuccessSnackBar(const Text('تم نسخ رمز الإحالة بنجاح'));
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // logout
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          // red
                          style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
                                iconColor: WidgetStateProperty.all(Colors.red),
                                overlayColor: WidgetStateProperty.all(Colors.red.withOpacity(0.1)),
                              ),
                          icon: const Icon(
                            Ionicons.log_out_outline,
                          ),
                          onPressed: () => _logout(context),
                          label: Text(t.auth.user.signout, style: const TextStyle(color: Colors.red)),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'اي استفسار او مشكلة يمكنك التواصل معنا عبر البريد الالكتروني او الهاتف',
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _updateName(String name) async {
    await ff.users.updateMe(
      data: UserUpdateMe(
        name: name,
      ),
    );
  }

  void _updateEmail(String email) async {
    await ff.users.updateMe(
      data: UserUpdateMe(
        email: email,
      ),
    );
  }

  void _updatePhone(String phone) async {
    await ff.users.updateMe(
      data: UserUpdateMe(
        phone: phone,
      ),
    );
  }

  void _updatePhoto() async {
    try {
      var photoUrls = await pickImageAndUpload(folder: 'avatars', allowCompression: true);
      if (photoUrls?.firstOrNull?.nullIfEmpty == null) return;
      await ff.users.updateMe(
        data: UserUpdateMe(
          photoUrl: photoUrls!.first,
        ),
      );
      context.showSuccessSnackBar(const Text('تم تغيير الصورة بنجاح'));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      context.showErrorSnackBar(const Text('حدث خطأ ما'));
    }
  }

  void _updatePassword(
    String oldPassword,
    String newPassword,
  ) async {
    await ff.users.updateMe(
      data: UserUpdateMe(
        oldPassword: oldPassword,
        newPassword: newPassword,
      ),
    );
  }
}

Future<List<String>?> pickImageAndUpload({
  String? folder,
  void Function(int sent, int total)? onProgress,
  CancelToken? cancelToken,
  bool allowCompression = false,
  int? maxWidth,
  int? maxHeight,
  int quality = 80,
  bool allowMultiple = false,
}) async {
  // permission_handler
  // var cameraPermissionStatus = await Permission.camera.status;
  // var storagePermissionStatus = await Permission.storage.status;

  // if (cameraPermissionStatus.isDenied || storagePermissionStatus.isDenied) {
  //   if ((await Permission.camera.request()).isDenied || (await Permission.storage.request()).isDenied) {
  //     return null;
  //   }
  // }

  var urls = <String>[];
  var result = await FilePicker.platform.pickFiles(
    compressionQuality: quality,
    type: FileType.image,
    allowCompression: allowCompression,
    allowMultiple: allowMultiple,
  );
  if (result == null) return null;
  for (var file in result.files) {
    var imageFile = file.xFile;
    // resize using copyResize
    // maxWidth = maxWidth == null ? null : min(maxWidth, min(imageFile.width ?? 800, 800));
    // maxHeight = maxHeight == null ? null : min(maxHeight, min(imageFile.height ?? 800, 800));
    // if (maxWidth != null || maxHeight != null) {
    //   final bytes = await resizeImage(imageFile.rawBytes, width: maxWidth, height: maxHeight);
    //   imageFile = ImageFile(
    //     filePath: imageFile.filePath,
    //     rawBytes: bytes!.buffer.asUint8List(),
    //     contentType: imageFile.contentType,
    //     width: maxWidth,
    //     height: maxHeight,
    //   );
    // }
    // output = imageFile;
    try {
      var photoUrl = await ff.storage.upload(
        file: PlatformFile(
          name: imageFile.name,
          size: await imageFile.length(),
          bytes: await imageFile.readAsBytes(),
        ),
        folder: folder,
        onProgress: onProgress,
        cancelToken: cancelToken,
      );
      urls.add(photoUrl);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
  return urls.isEmpty ? null : urls;
}

// uploadImageByteToServer (Uint8List)
// this first create a file then send it
Future<String?> uploadImageByteToServer(Uint8List bytes, {String? folder, void Function(int sent, int total)? onProgress, CancelToken? cancelToken}) async {
  try {
    // use lookupMimeType
    var ext = lookupMimeType('image', headerBytes: bytes)!.split('/').last;
    var fileName = 'image.$ext';
    var photoUrl = await ff.storage.uploadBytes(
      bytes: bytes,
      filename: fileName,
      folder: folder,
      onProgress: onProgress,
      cancelToken: cancelToken,
    );
    return photoUrl;
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
    return null;
  }
}

// text or flag widget
class TextOrFlag extends StatelessWidget {
  final String? text;
  final String? flag;
  const TextOrFlag(this.text, {super.key, this.flag});

  @override
  Widget build(BuildContext context) {
    return text == null || text!.isEmpty
        ? Align(
            alignment: AlignmentDirectional.centerStart,
            child: Flag(flag),
          )
        : Text(text!);
  }
}

class Flag extends StatelessWidget {
  const Flag(
    this.flag, {
    super.key,
  });

  final String? flag;

  @override
  Widget build(BuildContext context) {
    return Badge(
      backgroundColor: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      label: Text(flag ?? 'Empty',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontSize: 11,
                color: Theme.of(context).colorScheme.onPrimary,
              )),
    );
  }
}

// edit name dialog
class _EditNameDailog extends StatefulWidget {
  final Function(String)? onSubmitted;
  final String? initialValue;
  // ignore: unused_element
  const _EditNameDailog({super.key, this.onSubmitted, this.initialValue});

  @override
  State<_EditNameDailog> createState() => _EditNameDailogState();
}

class _EditNameDailogState extends State<_EditNameDailog> {
  FutureStatus status = FutureStatus.initial;
  String? error;
  late TextEditingController controller = TextEditingController(
    text: widget.initialValue,
  );
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void _submit() async {
    if (status == FutureStatus.inProgress) return;
    if (formKey.currentState!.validate()) {
      setState(() {
        status = FutureStatus.inProgress;
        error = null;
      });
      try {
        // await Future.delayed(const Duration(seconds: 1));
        await widget.onSubmitted!(controller.text);
        context.showSuccessSnackBar(const Text('تم تعديل الاسم بنجاح'));
        setState(() {
          status = FutureStatus.success;
        });
      } on FeeefValidationException catch (e) {
        error = e.getFieldMessage("name") ?? 'حدث خطأ ما';
        context.showErrorSnackBar(Text(error!));
        setState(() {
          status = FutureStatus.error;
        });
      } catch (e) {
        context.showErrorSnackBar(const Text('حدث خطأ ما'));
        setState(() {
          status = FutureStatus.error;
          error = 'حدث خطأ ما';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('تعديل الاسم'),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (status == FutureStatus.error) ...[
              Card.filled(
                color: Colors.red.withOpacity(0.1),
                child: ListTile(
                  leading: const Icon(Icons.error, color: Colors.red),
                  title: Text(
                    error ?? 'حدث خطأ ما',
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ] else if (status == FutureStatus.success) ...[
              Card.filled(
                color: Colors.green.withOpacity(0.1),
                child: const ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text('تم تعديل الاسم بنجاح'),
                ),
              ),
              const SizedBox(height: 16),
            ],
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: controller,
              decoration: InputDecoration(
                hintText: 'الاسم',
                prefixIcon: const Icon(Icons.person),
                labelText: 'الاسم',
                helperText: 'الرجاء ادخال الاسم',
                errorText: error,
              ),
              maxLength: 32,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'الرجاء ادخال الاسم';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(t.general.cancel),
        ),
        FilledButton.tonalIcon(
          onPressed: _submit,
          label: Text(t.general.save),
          icon: status == FutureStatus.inProgress ? const SizedBox.square(dimension: 20, child: CircularProgressIndicator(strokeWidth: 2)) : const Icon(Ionicons.save),
        ),
      ],
    );
  }
}

// edit email dialog
class _EditEmailDailog extends StatefulWidget {
  final Function(String)? onSubmitted;
  final String? initialValue;
  // ignore: unused_element
  const _EditEmailDailog({super.key, this.onSubmitted, this.initialValue});

  @override
  State<_EditEmailDailog> createState() => _EditEmailDailogState();
}

class _EditEmailDailogState extends State<_EditEmailDailog> {
  FutureStatus status = FutureStatus.initial;
  String? error;
  late TextEditingController controller = TextEditingController(
    text: widget.initialValue,
  );
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void _submit() async {
    if (status == FutureStatus.inProgress) return;
    if (formKey.currentState!.validate()) {
      setState(() {
        status = FutureStatus.inProgress;
        error = null;
      });
      try {
        // await Future.delayed(const Duration(seconds: 1));
        await widget.onSubmitted!(controller.text);
        context.showSuccessSnackBar(const Text('تم تعديل البريد الالكتروني بنجاح'));
        setState(() {
          status = FutureStatus.success;
        });
      } on FeeefValidationException catch (e) {
        error = e.getFieldMessage("email") ?? 'حدث خطأ ما';
        context.showErrorSnackBar(Text(error!));
        setState(() {
          status = FutureStatus.error;
        });
      } catch (e) {
        context.showErrorSnackBar(const Text('حدث خطأ ما'));
        setState(() {
          status = FutureStatus.error;
          error = 'حدث خطأ ما';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('تعديل البريد الالكتروني'),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (status == FutureStatus.error) ...[
              Card.filled(
                color: Colors.red.withOpacity(0.1),
                child: ListTile(
                  leading: const Icon(Icons.error, color: Colors.red),
                  title: Text(
                    error ?? 'حدث خطأ ما',
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ] else if (status == FutureStatus.success) ...[
              Card.filled(
                color: Colors.green.withOpacity(0.1),
                child: const ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text('تم تعديل البريد الالكتروني بنجاح'),
                ),
              ),
              const SizedBox(height: 16),
            ],
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: controller,
              decoration: InputDecoration(
                hintText: 'البريد الالكتروني',
                prefixIcon: const Icon(Icons.email),
                labelText: 'البريد الالكتروني',
                helperText: 'الرجاء ادخال البريد الالكتروني',
                errorText: error,
              ),
              maxLength: 32,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'الرجاء ادخال البريد الالكتروني';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(t.general.cancel),
        ),
        FilledButton.tonalIcon(
          onPressed: _submit,
          label: Text(t.general.save),
          icon: status == FutureStatus.inProgress ? const SizedBox.square(dimension: 20, child: CircularProgressIndicator(strokeWidth: 2)) : const Icon(Ionicons.save),
        ),
      ],
    );
  }
}

// edit phone dialog
class _EditPhoneDailog extends StatefulWidget {
  final Function(String)? onSubmitted;
  final String? initialValue;
  // ignore: unused_element
  const _EditPhoneDailog({super.key, this.onSubmitted, this.initialValue});

  @override
  State<_EditPhoneDailog> createState() => _EditPhoneDailogState();
}

class _EditPhoneDailogState extends State<_EditPhoneDailog> {
  FutureStatus status = FutureStatus.initial;
  String? error;
  late TextEditingController controller = TextEditingController(
    text: widget.initialValue,
  );
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void _submit() async {
    if (status == FutureStatus.inProgress) return;
    if (formKey.currentState!.validate()) {
      setState(() {
        status = FutureStatus.inProgress;
        error = null;
      });
      try {
        // await Future.delayed(const Duration(seconds: 1));
        await widget.onSubmitted!(controller.text);
        context.showSuccessSnackBar(const Text('تم تعديل رقم الهاتف بنجاح'));
        setState(() {
          status = FutureStatus.success;
        });
      } on FeeefValidationException catch (e) {
        error = e.getFieldMessage("phone") ?? 'حدث خطأ ما';
        context.showErrorSnackBar(Text(error!));
        setState(() {
          status = FutureStatus.error;
        });
      } catch (e) {
        context.showErrorSnackBar(const Text('حدث خطأ ما'));
        setState(() {
          status = FutureStatus.error;
          error = 'حدث خطأ ما';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('تعديل رقم الهاتف'),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (status == FutureStatus.error) ...[
              Card.filled(
                color: Colors.red.withOpacity(0.1),
                child: ListTile(
                  leading: const Icon(Icons.error, color: Colors.red),
                  title: Text(
                    error ?? 'حدث خطأ ما',
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ] else if (status == FutureStatus.success) ...[
              Card.filled(
                color: Colors.green.withOpacity(0.1),
                child: const ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text('تم تعديل رقم الهاتف بنجاح'),
                ),
              ),
              const SizedBox(height: 16),
            ],
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: controller,
              decoration: InputDecoration(
                hintText: 'رقم الهاتف',
                prefixIcon: const Icon(Icons.phone),
                labelText: 'رقم الهاتف',
                helperText: 'الرجاء ادخال رقم الهاتف',
                errorText: error,
              ),
              maxLength: 10,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'الرجاء ادخال رقم الهاتف';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(t.general.cancel),
        ),
        FilledButton.tonalIcon(
          onPressed: _submit,
          label: Text(t.general.save),
          icon: status == FutureStatus.inProgress ? const SizedBox.square(dimension: 20, child: CircularProgressIndicator(strokeWidth: 2)) : const Icon(Ionicons.save),
        ),
      ],
    );
  }
}

// change password dialog
class _ChangePasswordDailog extends StatefulWidget {
  final Function(String oldPassword, String newPassword)? onSubmitted;
  // ignore: unused_element
  const _ChangePasswordDailog({super.key, this.onSubmitted});

  @override
  State<_ChangePasswordDailog> createState() => _ChangePasswordDailogState();
}

class _ChangePasswordDailogState extends State<_ChangePasswordDailog> {
  FutureStatus status = FutureStatus.initial;
  String? error;
  FeeefValidationException? validationError;
  late TextEditingController oldPasswordController = TextEditingController();
  late TextEditingController newPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void _submit() async {
    if (status == FutureStatus.inProgress) return;
    if (formKey.currentState!.validate()) {
      setState(() {
        status = FutureStatus.inProgress;
        error = null;
        validationError = null;
      });
      try {
        // await Future.delayed(const Duration(seconds: 1));
        await widget.onSubmitted!(oldPasswordController.text, newPasswordController.text);
        context.showSuccessSnackBar(const Text('تم تغيير كلمة المرور بنجاح'));
        setState(() {
          status = FutureStatus.success;
        });
      } on FeeefValidationException catch (e) {
        error = e.messages.isNotEmpty ? e.messages.join("\n") : 'حدث خطأ ما';
        validationError = e;
        context.showErrorSnackBar(Text(error!));
        setState(() {
          status = FutureStatus.error;
        });
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
        context.showErrorSnackBar(const Text('حدث خطأ ما'));
        setState(() {
          status = FutureStatus.error;
          error = 'حدث خطأ ما';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('تغيير كلمة المرور'),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (status == FutureStatus.error) ...[
              Card.filled(
                color: Colors.red.withOpacity(0.1),
                child: ListTile(
                  leading: const Icon(Icons.error, color: Colors.red),
                  title: Text(
                    error ?? 'حدث خطأ ما',
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ] else if (status == FutureStatus.success) ...[
              Card.filled(
                color: Colors.green.withOpacity(0.1),
                child: const ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text('تم تغيير كلمة المرور'),
                ),
              ),
              const SizedBox(height: 16),
            ],
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: oldPasswordController,
              decoration: InputDecoration(
                hintText: 'الحالية',
                prefixIcon: const Icon(Icons.lock),
                labelText: 'كلمة المرور القديمة',
                helperText: 'الرجاء ادخال كلمة المرور الحالية',
                errorText: validationError?.getFieldMessage("oldPassword"),
              ),
              maxLength: 32,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'الرجاء ادخال كلمة المرور القديمة';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: newPasswordController,
              decoration: InputDecoration(
                hintText: 'كلمة المرور الجديدة',
                prefixIcon: const Icon(Icons.lock),
                labelText: 'كلمة المرور الجديدة',
                helperText: 'الرجاء ادخال كلمة المرور الجديدة',
                errorText: validationError?.getFieldMessage("newPassword"),
              ),
              maxLength: 32,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'الرجاء ادخال كلمة المرور الجديدة';
                }
                // must not same
                if (value == oldPasswordController.text) {
                  return 'كلمة المرور الجديدة يجب ان تكون مختلفة عن كلمة المرور القديمة';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(t.general.cancel),
        ),
        FilledButton.tonalIcon(
          onPressed: _submit,
          label: Text(t.general.save),
          icon: status == FutureStatus.inProgress ? const SizedBox.square(dimension: 20, child: CircularProgressIndicator(strokeWidth: 2)) : const Icon(Ionicons.save),
        ),
      ],
    );
  }
}
