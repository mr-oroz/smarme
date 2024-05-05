import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/features/main/data/model/bottom_navigation_bar_item_model.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

List<BottomNavigationBarItemModel> items = [
  BottomNavigationBarItemModel(
    image: Image.asset(Assets.icons.home.path, width: 18, height: 18),
    activeImage:
        Image.asset(Assets.icons.activeHome.path, width: 18, height: 18),
    text: 'Главная',
  ),
  BottomNavigationBarItemModel(
    image: Image.asset(
      Assets.icons.announcement.path,
      width: 18,
      height: 18,
    ),
    activeImage: Image.asset(
      Assets.icons.activeAnnouncement.path,
      width: 18,
      height: 18,
    ),
    text: 'Объявления',
  ),
  BottomNavigationBarItemModel(
    image: Image.asset(Assets.icons.issue.path, width: 18, height: 18),
    activeImage:
        Image.asset(Assets.icons.activeIssue.path, width: 18, height: 18),
    text: 'Вопрос',
  ),
  BottomNavigationBarItemModel(
    image: Assets.icons.group.image(width: 18, height: 18),
    activeImage: Assets.icons.activeGroup.image(width: 18, height: 18),
    text: 'Сообщества',
  ),
  BottomNavigationBarItemModel(
    image: Image.asset(Assets.icons.account.path, width: 18, height: 18),
    activeImage:
        Image.asset(Assets.icons.accountActive.path, width: 18, height: 18),
    text: 'Профиль',
  ),
];
