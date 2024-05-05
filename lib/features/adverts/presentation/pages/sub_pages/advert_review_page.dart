import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/widgets/widgets.dart';

class AdverReviewPage extends StatelessWidget {
  const AdverReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 15),
      children: const [
        CardReviewContactWidget(),
        SizedBox(height: 19),
        ContainerRadiusWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Особенности'),
              SizedBox(height: 15),
              RichTextWidget(
                firstText: 'Услуги',
                text:
                    'макияж, массаж, косметология, маникюр, пилинг, уход за телом, эпиляция, уход за лицом, наращивание ресниц, наращивание ногтей, педикюр, ламинирование ресниц, перманентный макияж',
              ),
              SizedBox(height: 15),
              RichTextWidget(
                firstText: 'Для ногтей',
                text:
                    'женский педикюр, женский маникюр, мужской маникюр, мужской педикюр, перманентный маникюр, дизайн ногтей, парафинотерапия, spa-маникюр, аппаратный педикюр, аппаратный маникюр, комби маникюр, комби педикюр, smart-педикюр',
              ),
              SizedBox(height: 15),
              RichTextWidget(
                firstText: 'Эпиляция/депиляция',
                text:
                    'лазерная эпиляция, шугаринг, восковая депиляция',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
