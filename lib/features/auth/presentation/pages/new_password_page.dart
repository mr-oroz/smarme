import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router.dart';
import 'package:w_sharme_beauty/core/widgets/gl_button.dart';
import 'package:w_sharme_beauty/core/widgets/gl_text_form_field.dart';
import 'package:w_sharme_beauty/features/auth/presentation/widgets/widgets.dart';

final _formKey = GlobalKey<FormState>();

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});


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
                      TitleAuthWidget(title: 'Новый пароль'),
                      SizedBox(height: 20),
                      TextAuthWidget(
                        text: 'Придумайте новый пароль.',
                      ),
                      SizedBox(height: 30),
                      GlTextFormField(
                        obscureText: true,
                        hintText: 'Новый пароль',
                      ),
                      SizedBox(height: 10),
                      GlTextFormField(
                        obscureText: true,
                        hintText: 'Повторите пароль',
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GlButton(
                  text: 'Готово',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.goNamed(RouterContants.home);
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
