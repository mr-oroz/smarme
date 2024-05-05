import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/auth/presentation/bloc/auth_bloc.dart';

import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/profile_setting_card_item_widget.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/profile_setting_item_widget.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    final route = GoRouter.of(context);
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: GlAppBar(
        leading: GlIconButton(
          iconSize: 16,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.pop();
          },
        ),
        title:  CenterTitleAppBar(
          title: 'Настройки',
          textStyle: AppStyles.w500f22,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "УЧЕТНЫЕ ДАННЫЕ",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.white,
            ),
            child: Column(
              children: [
                const ProfileSettingItemWidget(
                  title: 'Телефон',
                  subtitle: '+7 707 707 7707',
                ),
                const ProfileSettingItemWidget(
                  title: 'День рождения',
                  subtitle: '21.02.2001',
                ),
                ProfileSettingItemWidget(
                  onTap: () {
                    route.push('/profile/${RouterContants.profileNewEmail}');
                  },
                  title: 'Email',
                  subtitle: 'Не указан',
                  isVisible: false,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ProfileSettingCardItemWidget(
            text: 'ПАРОЛЬ',
            title: 'Сменить пароль',
            onPresed: () {},
          ),
          const SizedBox(
            height: 15,
          ),
          ProfileSettingCardItemWidget(
            text: 'УВЕДОМЛЕНИЯ',
            title: 'Настройки уведомления',
            onPresed: () {},
          ),
          const SizedBox(
            height: 15,
          ),
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if(state is LogoutSuccess) {
                context.go(RouterContants.login);
              }
              if(state is AuthError) {}
            },
            child: ProfileSettingCardItemWidget(
              text: 'АККАУНТ',
              title: 'Выйти из аккаунта',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.red,
                    fontWeight: FontWeight.w700,
                  ),
              onPresed: () {
                context.read<AuthBloc>().add(LogoutEvent());
              },
            ),
          ),
        ],
      ),
    );
  }
}
