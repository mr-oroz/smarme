import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:w_sharme_beauty/features/auth/presentation/widgets/widgets.dart';

final _formKey = GlobalKey<FormState>();

class PasswordResetPage extends StatefulWidget {
  const PasswordResetPage({super.key});

  @override
  State<PasswordResetPage> createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
  final TextEditingController _email = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is ChangePasswordSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Если ваш адрес электронной почты зарегистрирован в нашей системе, мы отправим вам ссылку для сброса пароля.',
                    ),
                  ),
                );
                context.go(RouterContants.login);
              }
              if (state is AuthError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      state.message,
                    ),
                  ),
                );
              }
            },
            builder: (context, state) {
              return Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TitleAuthWidget(title: 'Сброс пароля'),
                          const SizedBox(height: 20),
                          const TextAuthWidget(
                            text: 'Чтобы сбросить пароль, введите ваш почту',
                          ),
                          const SizedBox(height: 20),
                          GlTextFormField(
                            obscureText: false,
                            hintText: 'Эл.адрес',
                            controller: _email,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    GlButton(
                      text:
                          state is AuthLoading ? 'Загрузка...' : 'Отправить код',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context
                              .read<AuthBloc>()
                              .add(ChangePasswordEmailEvent(_email.text));
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
