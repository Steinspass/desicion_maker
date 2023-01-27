import 'package:another_flushbar/flushbar_helper.dart';
import 'package:desicion_maker_app/presentation/widgets/a_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class BtnModalSupportDevWidget extends StatefulWidget {
  BtnModalSupportDevWidget({Key? key}) : super(key: key);

  @override
  State<BtnModalSupportDevWidget> createState() => _BtnModalSupportDevWidgetState();
}

class _BtnModalSupportDevWidgetState extends State<BtnModalSupportDevWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
                alignment: Alignment.topCenter,
                child: TextWidget(
                  padding: const EdgeInsets.all(10),
                  text: 'Support the development with donations.',
                  textStyle: Theme.of(context).textTheme.headline6,
                ),
              ),
        SizedBox(height: 20,),
        Align(
          alignment: Alignment.topLeft,
          child: TextWidget(
            padding: const EdgeInsets.all(6),
            text: 'Bitcoin (BTC)',
            textStyle: Theme.of(context).textTheme.button,
          ),
        ),
        ListTilesWidget(icon: Icons.copy_rounded, title: '3MrJvrtnnSNZWZJPhvT3oF41bye4ihTq8K', isSelectableText: true, onTap:(){

          Clipboard.setData(new ClipboardData(text: '3MrJvrtnnSNZWZJPhvT3oF41bye4ihTq8K'));

          FlushbarHelper.createSuccess(message: 'Copied the address of BTC').show(context);

        },),
        SizedBox(height: 20,),
        Align(
          alignment: Alignment.topLeft,
          child: TextWidget(
            padding: const EdgeInsets.all(6),
            text: 'Ethereum (ERC20)',
            textStyle: Theme.of(context).textTheme.button,
          ),
        ),
        ListTilesWidget(icon: Icons.copy_rounded, title: '0x6e9a103c251df7fa3e00330b5c1d985a2d6ed35f', isSelectableText: true, onTap:(){

          Clipboard.setData(new ClipboardData(text: '0x6e9a103c251df7fa3e00330b5c1d985a2d6ed35f'));

          FlushbarHelper.createSuccess(message: 'Copied the address of ETH').show(context);

        },),
        SizedBox(height: 20,),
        Align(
          alignment: Alignment.topLeft,
          child: TextWidget(
            padding: const EdgeInsets.all(6),
            text: 'USDT / red Tron (TRC20)',
            textStyle: Theme.of(context).textTheme.button,
          ),
        ),
        ListTilesWidget(icon: Icons.copy_rounded, title: 'TSMJwx4XocFS6DSK6WxrxzZ7xDxqLT9FB8', isSelectableText: true, onTap:(){

          Clipboard.setData(new ClipboardData(text: 'TSMJwx4XocFS6DSK6WxrxzZ7xDxqLT9FB8'));

          FlushbarHelper.createSuccess(message: 'Copied the address of USDT').show(context);

        },),
        SizedBox(height: 50,),
      ],
    );
  }
}