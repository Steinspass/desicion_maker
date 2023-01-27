import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';



PreferredSizeWidget? appBarWidget(BuildContext context, String? title, Widget? action){

final sizeWidth = MediaQuery.of(context).size.width;

return AppBar(
    actions: [action ?? SizedBox.shrink()],
    leading: sizeWidth >= 800 ? SizedBox.shrink() : IconButtonWidget(icon: Icons.arrow_back_rounded, onTap: () => Navigator.pop(context),),
    title: TextWidget(text: title, padding: const EdgeInsets.all(2), textStyle: Theme.of(context).textTheme.headline5),
  );

}