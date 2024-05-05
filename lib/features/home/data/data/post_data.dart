import 'package:w_sharme_beauty/features/home/data/model/post_card_model.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

List<PostCardModel> posts = [
  PostCardModel(
      text:
          'Нет ничего более удивительного, чем мастерство маникюриста, который обладает умением превратить обычные ногти в истинные произведения искусства. Моя цель - не просто ухаживать за ногтями, но и придавать им индивидуальность, отражающую ваш стиль и характер.',
      username: 'Ella Ivanova',
      data: '22 мар в 08:39',
      like: '255',
      repost: '6',
      comments: '32',
      avatar: Assets.images.avatar.path,
      id: '1',),
  PostCardModel(
    //postImages: const PostVideoCard(),
    text: 'Нет ничего более удивительного',
    username: 'Nastya',
    data: '22 мар в 08:39',
    like: '255',
    repost: '6',
    comments: '32',
    avatar: Assets.images.avatar.path, id: '2',
  ),
  PostCardModel(
    //postImages: const PostImagesGrid(),
    text: 'Мои работы за 3 дня! Оцените в комментариях по 10 бальной шкале!',
    username: 'Nasti',
    data: '22 мар в 08:39',
    like: '255',
    repost: '6',
    comments: '32',
    avatar: Assets.images.avatar.path,
    id: '3',
  ),
];
