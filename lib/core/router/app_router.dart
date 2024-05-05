import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/pages/pages.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/pages/sub_pages/advert_detail_page.dart';
import 'package:w_sharme_beauty/features/app/widgets/app.dart';
import 'package:w_sharme_beauty/features/auth/presentation/pages/pages.dart';
import 'package:w_sharme_beauty/features/chat/presentation/pages/pages.dart';
import 'package:w_sharme_beauty/features/chat/presentation/pages/sub_pages/sub_pages.dart';
import 'package:w_sharme_beauty/features/communities/presentation/pages/pages.dart';
import 'package:w_sharme_beauty/features/communities/presentation/pages/sub_pages/community_add_public_page.dart';
import 'package:w_sharme_beauty/features/communities/presentation/pages/sub_pages/community_chat_page.dart';
import 'package:w_sharme_beauty/features/communities/presentation/pages/sub_pages/community_edit_managers.dart';
import 'package:w_sharme_beauty/features/communities/presentation/pages/sub_pages/community_edit_page.dart';
import 'package:w_sharme_beauty/features/communities/presentation/pages/sub_pages/community_leo_monic_chat_page.dart';
import 'package:w_sharme_beauty/features/communities/presentation/pages/sub_pages/community_managers_page.dart';
import 'package:w_sharme_beauty/features/communities/presentation/pages/sub_pages/community_members_page.dart';
import 'package:w_sharme_beauty/features/communities/presentation/pages/sub_pages/community_profile_page.dart';
import 'package:w_sharme_beauty/features/communities/presentation/pages/sub_pages/community_profile_subscribe_page.dart';
import 'package:w_sharme_beauty/features/communities/presentation/pages/sub_pages/community_subscribers_page.dart';
import 'package:w_sharme_beauty/features/communities/presentation/pages/sub_pages/create_a_community_page.dart';
import 'package:w_sharme_beauty/features/home/presentation/pages/pages.dart';
import 'package:w_sharme_beauty/features/home/presentation/pages/sub_pages/sub_pages.dart';
import 'package:w_sharme_beauty/features/main/presentation/pages/main_page.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/pages.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/sub_pages/sub_pages.dart';
import 'package:w_sharme_beauty/features/question/presentation/pages/pages.dart';

mixin AppRouter on State<App> {
  final GoRouter _router = GoRouter(
    navigatorKey: RouterKeys.rootKey,
    debugLogDiagnostics: true,
    //initialLocation: RouterContants.login,
    redirect: (BuildContext context, GoRouterState state) {
      final isLoggedIn = FirebaseAuth.instance.currentUser != null;
      final goingToLoginPage = state.matchedLocation == RouterContants.login;
      final isGoingToRegisterPage =
          state.matchedLocation == RouterContants.register;
      final isGoingToResetPasswordPage =
          state.matchedLocation == RouterContants.reset;
      if (!isLoggedIn &&
          !goingToLoginPage &&
          !isGoingToRegisterPage &&
          !isGoingToResetPasswordPage) return RouterContants.login;
      if (isLoggedIn &&
          (goingToLoginPage ||
              isGoingToRegisterPage ||
              isGoingToResetPasswordPage)) return RouterContants.home;
      return null;
    },
    routes: [
      GoRoute(
        name: RouterContants.login,
        path: RouterContants.login,
        builder: (context, state) => const AuthorizationPage(),
      ),
      GoRoute(
        name: RouterContants.register,
        path: RouterContants.register,
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        name: RouterContants.confirmRegister,
        path: RouterContants.confirmRegister,
        builder: (context, state) => const ConfirmationOfRegistrationPage(),
      ),
      GoRoute(
        name: RouterContants.profileDataAuth,
        path: RouterContants.profileDataAuth,
        builder: (context, state) => const ProfileDataAuthPage(),
      ),
      GoRoute(
        name: RouterContants.confirmPassword,
        path: RouterContants.confirmPassword,
        builder: (context, state) => const ConfirmPasswordReset(),
      ),
      GoRoute(
        name: RouterContants.newPassword,
        path: RouterContants.newPassword,
        builder: (context, state) => const NewPasswordPage(),
      ),
      GoRoute(
        name: RouterContants.reset,
        path: RouterContants.reset,
        builder: (context, state) => const PasswordResetPage(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainPage(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: RouterKeys.homeKey,
            routes: [
              GoRoute(
                name: RouterContants.home,
                path: RouterContants.home,
                builder: (context, state) => const HomePage(),
                routes: [
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    path: '${RouterContants.post}/:postId',
                    builder: (BuildContext context, GoRouterState state) {
                      final postId = state.pathParameters['postId'];
                      return HomePostPage(
                        postId: postId,
                      );
                    },
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    path: RouterContants.homeNotification,
                    builder: (context, state) => const HomeNotificationPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    path: RouterContants.chat,
                    builder: (context, state) => const ChatPage(),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: RouterKeys.rootKey,
                        name: RouterContants.chatMessages,
                        path: RouterContants.chatMessages,
                        builder: (context, state) => const ChatMessagesPage(),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: RouterKeys.rootKey,
                            name: RouterContants.profilePersonPage,
                            path: RouterContants.profilePersonPage,
                            builder: (context, state) =>
                                const ProfilePersonPage(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: RouterKeys.advertKey,
            routes: [
              GoRoute(
                name: RouterContants.adverts,
                path: RouterContants.adverts,
                builder: (context, state) => const AdvertsPage(),
                routes: [
                  GoRoute(
                    name: RouterContants.advertDetailPage,
                    path: RouterContants.advertDetailPage,
                    builder: (context, state) {
                      return const AdverDetailPage();
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: RouterKeys.questionKey,
            routes: [
              GoRoute(
                name: RouterContants.question,
                path: RouterContants.question,
                builder: (context, state) => const QuestionPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: RouterKeys.communities,
            routes: [
              GoRoute(
                name: RouterContants.communities,
                path: RouterContants.communities,
                builder: (context, state) => const CommunitiesPage(),
                routes: [
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    name: RouterContants.communityCreate,
                    path: RouterContants.communityCreate,
                    builder: (context, state) => const CommunityCreatePage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    name: RouterContants.communityProfileSubscribe,
                    path:
                        "${RouterContants.communityProfileSubscribe}/:communityId",
                    builder: (BuildContext context, GoRouterState state) {
                      final communityId = state.pathParameters['communityId'];
                      return CommunityProfileSubscribePage(
                        communityId: communityId,
                      );
                    },
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    name: RouterContants.communityProfile,
                    path: RouterContants.communityProfile,
                    builder: (context, state) => const CommunityProfilePage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    name: RouterContants.communityAddPublic,
                    path: RouterContants.communityAddPublic,
                    builder: (context, state) => const CommunityAddPublicPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    name: RouterContants.communityMembers,
                    path: RouterContants.communityMembers,
                    builder: (context, state) => const CommunityMembersPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    name: RouterContants.communitySubscribers,
                    path: RouterContants.communitySubscribers,
                    builder: (context, state) =>
                        const CommunitySubscribersPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    name: RouterContants.communityManagers,
                    path: RouterContants.communityManagers,
                    builder: (context, state) => const CommunityManagersPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    name: RouterContants.communityEdit,
                    path: RouterContants.communityEdit,
                    builder: (context, state) => const CommunityEditPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    name: RouterContants.communityChat,
                    path: RouterContants.communityChat,
                    builder: (context, state) => const CommunityChatPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    name: RouterContants.communityEditManagers,
                    path: RouterContants.communityEditManagers,
                    builder: (context, state) =>
                        const CommunityEditManagersPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    name: RouterContants.communityLeoMonicChat,
                    path: RouterContants.communityLeoMonicChat,
                    builder: (context, state) =>
                        const CommunityLeoMonicChatPage(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: RouterKeys.profileKey,
            routes: [
              GoRoute(
                name: RouterContants.profile,
                path: RouterContants.profile,
                builder: (context, state) => const ProfilePage(),
                routes: [
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    path: RouterContants.profileEdit,
                    builder: (context, state) => const ProfileEditPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    path: RouterContants.homeNotification,
                    builder: (context, state) => const HomeNotificationPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    path: RouterContants.profileSettings,
                    builder: (context, state) => const ProfileSettingsPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    path: RouterContants.createPost,
                    builder: (context, state) => const CreatePostPage(),
                  ),
                  GoRoute(
                    parentNavigatorKey: RouterKeys.rootKey,
                    path: RouterContants.profileNewEmail,
                    builder: (context, state) => const ProfileNewEmailPage(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  GoRouter get routerConfig => _router;
}
