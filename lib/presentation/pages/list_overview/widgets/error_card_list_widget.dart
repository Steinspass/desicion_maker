import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ErrorCardListWidget extends StatefulWidget {

  final Function()? onTap;
  final ListProsCons list;

  ErrorCardListWidget({
    Key? key,
    @required this.onTap,
    required this.list
  }) 
  : super(key: key);

  @override
  State<ErrorCardListWidget> createState() => _ErrorCardListWidgetState();
}

class _ErrorCardListWidgetState extends State<ErrorCardListWidget> {
  
  final Preferences prefs = Preferences();
  
  @override
  Widget build(BuildContext context) {
    return CardWidget(
      color: prefs.whatTheme ? darkColorScheme.errorContainer : lightColorScheme.errorContainer,
      onTap: widget.onTap,
      onLongPress: null,
      height: 12.h,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0
      ),
      widget: Center(
        child: Column(
          children: [
            Text(
              '🚫 Invalid Item, Contact us by click me',
              style: TextStyle(
                fontWeight: FontWeight.w600, 
                fontSize: 14.0,  
                color: prefs.whatTheme ? darkColorScheme.onErrorContainer: lightColorScheme.onErrorContainer
              ),
            ),
            Text(
              widget.list.failureOption.fold(() => '', (f) => f.toString()),
              style: TextStyle(
                fontWeight: FontWeight.w600, 
                fontSize: 14.0,  
                color: prefs.whatTheme ? darkColorScheme.onErrorContainer: lightColorScheme.onErrorContainer
              ),
            ),
          ],
        ),
      ),
    );
  }
}