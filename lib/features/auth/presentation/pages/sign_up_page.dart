import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router.dart';
import 'package:w_sharme_beauty/core/widgets/gl_button.dart';
import 'package:w_sharme_beauty/core/widgets/gl_text_form_field.dart';
import 'package:w_sharme_beauty/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:w_sharme_beauty/features/auth/presentation/widgets/consent_text_auth_widget.dart';
import 'package:w_sharme_beauty/features/auth/presentation/widgets/text_auth_widget.dart';
import 'package:w_sharme_beauty/features/auth/presentation/widgets/title_auth_widget.dart';

final _formKey = GlobalKey<FormState>();

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _password.dispose();
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
              if (state is RegisterSucces) {
                context.go(RouterContants.profileDataAuth);
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
                          const TitleAuthWidget(title: 'Регистрация'),
                          const SizedBox(height: 20),
                          const TextAuthWidget(
                            text:
                                'Введите электронный адрес или номер телефона и придумайте пароль.',
                          ),
                          const SizedBox(height: 20),
                          GlTextFormField(
                            controller: _email,
                            obscureText: false,
                            hintText: 'Эл.адрес или номер телефона',
                          ),
                          const SizedBox(height: 10),
                          GlTextFormField(
                            controller: _password,
                            obscureText: true,
                            hintText: 'Придумайте пароль',
                          ),
                          const SizedBox(height: 20),
                          const ConsentTextAuthWidget(),
                        ],
                      ),
                    ),
                    const Spacer(),
                    GlButton(
                      text: state is AuthLoading ? 'Загрузка...' : 'Продолжить',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                                RegisterEvent(_email.text, _password.text),
                              );
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
