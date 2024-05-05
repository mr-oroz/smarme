import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router.dart';
import 'package:w_sharme_beauty/core/widgets/gl_button.dart';
import 'package:w_sharme_beauty/features/auth/presentation/widgets/widgets.dart';

final _formKey = GlobalKey<FormState>();

class ConfirmPasswordReset extends StatelessWidget {
  const ConfirmPasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Flexible(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleAuthWidget(title: 'Сброс пароля '),
                      SizedBox(height: 20),
                      TextAuthWidget(
                        text:
                            'Мы отправили SMS с кодом на Ваш телефон или в эл.почту введите его.',
                      ),
                      SizedBox(height: 31),
                      PinputAuthWidget(),
                      SizedBox(height: 16),
                      Center(
                        child: Text(
                          'Отправить повторно через 00:55',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA2A8B0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GlButton(
                  text: 'Продолжить',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.goNamed(RouterContants.newPassword);
                    }
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
