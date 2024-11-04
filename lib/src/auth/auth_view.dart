import 'package:feeef_marchant/feeef/core/validation/validation_exception.dart';
import 'package:feeef_marchant/feeef/core/widgets/alerts.dart';
import 'package:feeef_marchant/gen/assets.gen.dart';
import 'package:feeef_marchant/helpers.dart';
import 'package:feeef_marchant/i18n/strings.g.dart';
import 'package:feeef_marchant/src/auth/auth_bloc.dart';
import 'package:feeef_marchant/src/core/strings.dart';
import 'package:feeef_marchant/src/core/widgets/form_dailog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../main.dart';

enum AuthForm {
  signin,
  signup
}

// getSlugValidator
// ValidationBuilder getSlugValidator(BuildContext context) {
//   return getValidator(context).minLength(3).maxLength(50).regExp(
//         // must start with letter, after that can contain only lettter and number and "-" no capital letters
//         RegExp(r'^[a-z][a-z0-9-]*$'),
//         t.stores.fields.slug.validation,
//       );
// }

// // extention (price) to ValidationBuilder
// extension PriceValidator on ValidationBuilder {
//   ValidationBuilder price() {
//     return this
//         .required()
//         // Price must a positive number
//         .regExp(RegExp(r'^[0-9]+(\.[0-9]{1,2})?$'), 'Price must be a positive number');
//   }

//   // optional
//   ValidationBuilder nullable() {
//     return or((builder) => true, (builder) => true);
//   }
// }

class AuthView extends StatelessWidget {
  final AuthForm form;
  final String redirect;
  const AuthView({super.key, this.form = AuthForm.signin, this.redirect = '/'});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var showInfoPanel = !isMd(width);
    var formMaxWidth = forScreen<double>(width: width, lg: 350, xl: 400)!;
    return Scaffold(
      body: AutofillGroup(
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (false && showInfoPanel) ...[
                Expanded(
                  flex: 2,
                  child: Container(
                    // assets/motifs/heropatterns-white.png
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      // image: DecorationImage(
                      //   image: AssetImage('assets/motifs/heropatterns-black.png'),
                      //   fit: BoxFit.cover,
                      //   colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      // ),
                    ),
                    // color: Colors.blue,
                    // Add more design elements here
                    child: Center(
                      child: Image.asset(
                        "assets/feeef/element_3d.png",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const VerticalDivider()
              ],
              Center(
                child: SingleChildScrollView(
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: formMaxWidth,
                      ),
                      child: BlocListener<AuthBloc, AuthState>(
                        listener: (context, state) => GoRouter.of(context).refresh(),
                        child: Column(
                          children: [
                            // Add your logo here
                            Assets.feeef.feeefIcon.image(
                              width: 100,
                            ),
                            // Image.asset(
                            //   'assets/feeef/full_text_on_light.png',
                            //   width: 200,
                            //   color: Theme.of(context).colorScheme.primary,
                            // ),
                            const SizedBox(height: 32),
                            Text(
                              form == AuthForm.signin ? t.auth.signin : t.auth.signup,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            if (form == AuthForm.signin)
                              // Add your Sign In form here
                              _SigninForm()
                            else if (form == AuthForm.signup)
                              // Add your Sign Up form here
                              const _SignupForm(),
        
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  form == AuthForm.signin ? t.auth.dontHaveAnAccount : t.auth.alreadyHaveAnAccount,
                                ),
                                Flexible(
                                  child: TextButton(
                                    onPressed: () {
                                      // clear errors
                                      context.read<AuthBloc>().add(const AuthClear());
                                      context.go('/auth?form=${form == AuthForm.signin ? 'signup' : 'signin'}');
                                    },
                                    child: Text(
                                      form == AuthForm.signin ? t.auth.signup : t.auth.signin,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SigninForm extends StatelessWidget {
  // ignore: unused_element
  _SigninForm({super.key});

  late final email = TextEditingController(text: kDebugMode ? 'asynx@feeef.dz' : '');
  late final password = TextEditingController(text: kDebugMode ? 'Asynx\$FF' : '');

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        // loading
        if (state is AuthLoading) {
          ScaffoldMessenger.of(context).clearSnackBars();
          context.showLoadingSnackBar(Text(t.auth.signin));
        }
        if (state is AuthError) {
          ScaffoldMessenger.of(context).clearSnackBars();
          context.showErrorSnackBar(Text(state.message));
        }
        if (state is AuthValidationError) {
          ScaffoldMessenger.of(context).clearSnackBars();
          context.showErrorSnackBar(Text(state.exception.messages.join('\n')));
        }
        // if (state is AuthState && state.isSignedIn) {
        //   context.showSuccessSnackBar(Text(t.welcom));
        //   GoRouter.of(context).go(state.redirect ?? '/');
        // }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                if (state is AuthValidationError) ...[
                  AlertCard.error(
                    title: Text(t.general.error),
                    subtitle: Text(state.exception.messages.join('\n')),
                  ),
                  const SizedBox(height: 16),
                ] else if (state is AuthError) ...[
                  AlertCard.error(
                    title: Text(t.general.error),
                    subtitle: Text(state.message),
                  ),
                  const SizedBox(height: 16),
                ],
                TextFormField(
                  autofillHints: const [AutofillHints.email],
                  controller: email,
                  enabled: state is! AuthLoading,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: t.users.fields.email.label,
                    errorText: state is AuthValidationError ? state.exception.getFieldMessage('email') : null,
                  ),
                  // validator: getValidator(context).email().maxLength(50).build(),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                    FormBuilderValidators.maxLength(32),
                  ]),
                  // type is email
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  autofillHints: const [AutofillHints.password],
                  controller: password,
                  enabled: state is! AuthLoading,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    labelText: t.users.fields.password.label,
                    errorText: state is AuthValidationError ? state.exception.getFieldMessage('password') : null,
                  ),
                  obscureText: false,
                  // validator: getValidator(context).minLength(6).maxLength(30).build(),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(8),
                    FormBuilderValidators.maxLength(30),
                  ]),
                  // type is password
                  keyboardType: TextInputType.visiblePassword,
                ),
                // const SizedBox(height: 16),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    t.auth.forgotPassword,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  trailing: TextButton(
                    onPressed: state is AuthLoading
                        ? null
                        : () async {
                            // Add your forgot password logic here
                            // OPEN DAILOG with email input
                            await showDialog<String>(
                              context: context,
                              builder: (context) {
                                return FormDailog(
                                  title: const Text("إعادة تعيين كلمة المرور"),
                                  builder: (_, e) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const AlertCard.info(
                                        title: Text("سيتم إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني"),
                                      ),
                                      const SizedBox(height: 16),
                                      TextFormField(
                                        autofillHints: const [AutofillHints.email],
                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                        controller: email,
                                        decoration: const InputDecoration(
                                          labelText: "البريد الإلكتروني",
                                          prefixIcon: Icon(Icons.email),
                                        ),
                                        validator: FormBuilderValidators.compose(
                                          [
                                            FormBuilderValidators.required(),
                                            FormBuilderValidators.email(),
                                            FormBuilderValidators.maxLength(32),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  onSubmitted: () async {
                                    if (email.text.nullIfEmpty == null || !context.mounted) return;
                                    context.showLoadingSnackBar(Text(
                                      t.auth.resetPassword,
                                    ));
                                    // context.read<AuthBloc>().add(
                                    //       AuthResetPassword(
                                    //         email: email.text,
                                    //       ),
                                    //     );

                                    await ff.users.sendResetPasswordEmail(
                                      email: email.text,
                                    );


                                  },
                                );
                              },
                            );

                                    context.showSuccessAlertDialog(
                                      content: Text("تم إرسال رسالة إلى بريدك الإلكتروني"),
                                    );
                          },
                    child: Text(t.auth.resetPassword, style: Theme.of(context).textTheme.labelSmall!.copyWith()),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    icon: state is AuthLoading
                        ? SizedBox.square(
                            dimension: 20,
                            child: CircularProgressIndicator(
                              color: Theme.of(context).colorScheme.onPrimary,
                              strokeWidth: 2,
                            ),
                          )
                        : const Icon(Icons.login),
                    onPressed: () async {
                      if (formKey.currentState!.validate() && state is! AuthLoading) {
                        TextInput.finishAutofillContext();
                        context.read<AuthBloc>().add(AuthSignin(email: email.text, password: password.text));
                      }
                    },
                    label: Text(t.auth.signin),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _SignupForm extends StatefulWidget {
  // ignore: unused_element
  const _SignupForm({super.key});

  @override
  State<_SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<_SignupForm> {
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();
  var acceptTerms = ValueNotifier<bool?>(null);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                if (state is AuthValidationError) ...[
                  AlertCard.error(
                    title: Text(t.general.error),
                    subtitle: Text(state.exception.messages.join('\n')),
                  ),
                  const SizedBox(height: 16),
                ] else if (state is AuthError) ...[
                  AlertCard.error(
                    title: Text(t.general.error),
                    subtitle: Text(state.message),
                  ),
                  const SizedBox(height: 16),
                ],
                TextFormField(
                  autofillHints: const [AutofillHints.name],
                  controller: name,
                  enabled: state is! AuthLoading,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    labelText: t.users.fields.name.label,
                    errorText: state is AuthValidationError ? state.exception.getFieldMessage('name') : null,
                  ),
                  // validator: getValidator(context).minLength(3).maxLength(50).build(),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(1),
                    FormBuilderValidators.maxLength(32),
                  ]),
                  // type is name
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  autofillHints: const [AutofillHints.email],
                  controller: email,
                  enabled: state is! AuthLoading,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: t.users.fields.email.label,
                    errorText: state is AuthValidationError ? state.exception.getFieldMessage('email') : null,
                  ),
                  // validator: getValidator(context).email().maxLength(50).build(),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                    FormBuilderValidators.maxLength(32),
                  ]),
                  // type is email
                  keyboardType: TextInputType.emailAddress,
                ),
                // phone
                TextFormField(
                  autofillHints: const [AutofillHints.telephoneNumber],
                  controller: phone,
                  enabled: state is! AuthLoading,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    labelText: t.users.fields.phone.label,
                    errorText: state is AuthValidationError ? state.exception.getFieldMessage('phone') : null,
                  ),
                  // validator: getValidator(context).email().maxLength(50).build(),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.maxLength(10),
                  ]),
                  // type is email
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: password,
                  enabled: state is! AuthLoading,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    labelText: t.users.fields.password.label,
                    errorText: state is AuthValidationError ? state.exception.getFieldMessage('password') : null,
                  ),
                  obscureText: true,
                  // validator: getValidator(context).minLength(6).maxLength(30).build(),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(8),
                    FormBuilderValidators.maxLength(32),
                  ]),
                  // type is password
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 16),
                // accept terms and conditions
                ListenableBuilder(
                    listenable: acceptTerms,
                    builder: (context, _) {
                      return SwitchListTile(
                        // secondary: const Icon(Ionicons.checkmark_circle),
                        value: acceptTerms.value == true,
                        onChanged: (value) {
                          acceptTerms.value = value;
                        },
                        title: Text(
                          t.auth.acceptTerms,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        subtitle: acceptTerms.value == false ? Text(t.auth.acceptTermsValidation) : null,
                      );
                    }),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    icon: state is AuthLoading
                        ? SizedBox.square(
                            dimension: 20,
                            child: CircularProgressIndicator(
                              color: Theme.of(context).colorScheme.onPrimary,
                              strokeWidth: 2,
                            ),
                          )
                        : const Icon(Icons.login),
                    onPressed: state is! AuthLoading ? _login : null,
                    label: Text(t.auth.signup),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _login() async {
    if ([
      null,
      false
    ].contains(acceptTerms.value)) {
      acceptTerms.value = false;
      context.showWarningSnackBar(Text(
        t.auth.acceptTermsValidation,
      ));
      return;
    }
    if (formKey.currentState!.validate()) {
      TextInput.finishAutofillContext();
      // ref code dailog
      var code = TextEditingController();
      showDialog<String>(
        context: context,
        builder: (context) {
          return FormDailog(
            title: const Text("رمز الإحالة"),
            builder: (_, e) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const AlertCard.info(
                  title: Text("يمكنك الحصول عليه من اي عضو في المنصة، أو اتركه فارغا"),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: code,
                  decoration: const InputDecoration(
                    labelText: "أدخل رمز الإحالة",
                    prefixIcon: Icon(Icons.code),
                  ),
                  validator: FormBuilderValidators.compose(
                    [
                      // 12 char no spaces [0-9] and camalcase [a-z]
                      // FormBuilderValidators.equalLength(12) ,
                    ],
                  ),
                ),
              ],
            ),
            onSubmitted: () async {
              if (
                  // code.text.nullIfEmpty == null ||
                  !context.mounted) return;
              context.showLoadingSnackBar(Text(
                t.auth.signup,
              ));
              context.read<AuthBloc>().add(
                    AuthSignup(
                      referral: code.text,
                      name: name.text,
                      email: email.text,
                      phone: phone.text.nullIfEmpty,
                      password: password.text,
                    ),
                  );

              await Future.delayed(const Duration(milliseconds: 500));
            },
          );
        },
      );
    }
  }
}
