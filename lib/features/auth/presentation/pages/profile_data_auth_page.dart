import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:w_sharme_beauty/features/auth/presentation/widgets/widgets.dart';

final _formKey = GlobalKey<FormState>();

class ProfileDataAuthPage extends StatefulWidget {
  const ProfileDataAuthPage({super.key});

  @override
  State<ProfileDataAuthPage> createState() => _ProfileDataAuthPageState();
}

class _ProfileDataAuthPageState extends State<ProfileDataAuthPage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _username = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _city.dispose();
    _username.dispose();
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
              if (state is RegisterSaveDataSuccess) {
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
                          const TitleAuthWidget(title: 'Данные профиля'),
                          const SizedBox(height: 20),
                          const TextAuthWidget(
                            text:
                                'Заполните личные данные, чтобы иметь доступ к своим заказам и результатам в приложении',
                          ),
                          const SizedBox(height: 20),
                          GlTextFormField(
                            controller: _name,
                            obscureText: false,
                            hintText: 'Ваше Ф.И.О.',
                          ),
                          const SizedBox(height: 10),
                          GlTextFormField(
                            controller: _username,
                            obscureText: false,
                            hintText: 'Придумайте имя пользователя',
                          ),
                          const SizedBox(height: 10),
                          GlTextFormField(
                            controller: _city,
                            obscureText: false,
                            hintText: 'Ваш город',
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    GlButton(
                      text: state is AuthLoading ? "Загрузка..." : 'Сохранить',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                                RegisterSaveDataEvent(
                                  _name.text,
                                  _city.text,
                                  _username.text,
                                ),
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
