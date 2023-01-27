import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons_failure.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CriticalErrorWidget extends StatefulWidget {
  
  final Function()? onTap;
  final ListProsConsFailure failure;
  
  CriticalErrorWidget({
    Key? key,
    @required this.onTap,
    required this.failure
  }) : super(key: key);

  @override
  State<CriticalErrorWidget> createState() => _CriticalErrorWidgetState();
}

class _CriticalErrorWidgetState extends State<CriticalErrorWidget> {
  
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
              '😱 Critical Error, Contact us by click me',
              style: TextStyle(
                fontWeight: FontWeight.w600, 
                fontSize: 14.0,  
                color: prefs.whatTheme ? darkColorScheme.onErrorContainer: lightColorScheme.onErrorContainer
              ),
            ),
            Text(
              widget.failure.maybeMap(
              insufficientPermissions: (_) => 'Insufficient permissions',
              orElse: () => 'Unexpected error. \n Please, contact support.',
              ),
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