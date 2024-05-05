import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router_contants.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:w_sharme_beauty/features/auth/presentation/widgets/text_auth_widget.dart';
import 'package:w_sharme_beauty/features/auth/presentation/widgets/title_auth_widget.dart';

final _formKey = GlobalKey<FormState>();

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({super.key});

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Form(
            key: _formKey,
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is LoginSuccess) {
                  context.go(RouterContants.home);
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
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TitleAuthWidget(title: 'Авторизоваться'),
                          const SizedBox(height: 20),
                          const TextAuthWidget(
                            text:
                                'Что-бы пользоваться сервисом на любом устройстве.',
                          ),
                          const SizedBox(height: 20),
                          GlTextFormField(
                            controller: _email,
                            obscureText: false,
                            hintText: 'Электронная почта',
                          ),
                          const SizedBox(height: 10),
                          GlTextFormField(
                            controller: _password,
                            obscureText: true,
                            hintText: 'Введите пароль',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context.push(RouterContants.reset);
                                },
                                child: Text(
                                  'забыли пароль',
                                  style: AppStyles.w400f16.copyWith(
                                    color: AppColors.purple,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    GlButton(
                      text: state is AuthLoading ? 'Загрузка...' : 'Войти',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                                LoginEvent(
                                  _email.text,
                                  _password.text,
                                ),
                              );
                        }
                      },
                    ),
                    GlTextButton(
                      text: 'Регистрация',
                      onPressed: () {
                        context.push(RouterContants.register);
                      },
                      color: AppColors.purple,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
