
import 'package:desicion_maker_app/application/list_pros&cons/selected_list/selected_list_cubit.dart';
import 'package:desicion_maker_app/application/theme/theme_app_cubit.dart';
import 'package:desicion_maker_app/domain/list_pros&cons/listProsCons.dart';
import 'package:desicion_maker_app/infrastructure/core/preferences/local_preferences.dart';
import 'package:desicion_maker_app/injection.dart';
import 'package:desicion_maker_app/presentation/layout/responsive_widget_layout.dart';
import 'package:desicion_maker_app/presentation/pages/form_list/widgets/btnmodal_create_widget.dart';
import 'package:desicion_maker_app/presentation/pages/item_overview/item_page.dart';
import 'package:desicion_maker_app/presentation/pages/list_overview/overview_list_body.dart';
import 'package:desicion_maker_app/presentation/pages/settings/misc/is_premium_misc.dart';
import 'package:desicion_maker_app/presentation/pages/settings/widgets/bottom_modal_options_settings_widget.dart';
import 'package:desicion_maker_app/presentation/theme/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:platform_plus/platform_plus.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../widgets/a_widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    if (platformPlus.isAndroidNative) {
      initPlatformState();
    }
  }

  Future<void> initPlatformState() async {
    CustomerInfo customerInfo = await Purchases.getCustomerInfo();

    //  if (!mounted) return;

    isPremiumUser(customerInfo);
  }

  @override
  Widget build(BuildContext context) {
    return responsiveWidgetLayout(
      context,
      mobileL: MobileHomePage(),
      tabletL: MobileHomePage(),
      desktopL: BlocProvider<SelectedListCubit>(
          child: DesktopHomePage(),
          create: (context) => getIt<SelectedListCubit>()),
    );
  }
}

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
          padding: null,
          text: 'Decisions',
          textStyle: Theme.of(context).textTheme.headline4,
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButtonWidget(
            icon: Icons.more_vert_rounded,
            onTap: () {
              showBottomModalCustomWidget(context,
                  widget: BottomModalOptionsSettingsWidget(),
                  isExpanded: false);
            },
          ),
        ],
      ),
      body: OverviewListBody(),
      floatingActionButton: FabExtendedWidget(
          title: "Create",
          icon: Icons.create_rounded,
          onTap: () {
            showBottomModalCustomWidget(context,
                widget: BottomModalCreateWidget(
                  listEdit: ListProsCons.empty(),
                ),
                isExpanded: true);
          },
          isScrolling: true),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class DesktopHomePage extends StatefulWidget {
  DesktopHomePage({Key? key}) : super(key: key);

  @override
  State<DesktopHomePage> createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  
  Preferences prefs = Preferences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
          padding: null,
          text: 'Your Decisions',
          textStyle: Theme.of(context).textTheme.headline4,
        ),
        backgroundColor: Colors.transparent,
        elevation: 1.0,
        actions: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RoundedButtonIconWidget(
              text: 'Android App',
              icon: BoxIcons.bxl_play_store,
              onTap: () {
                launchUrlString('https://play.google.com/store/apps/details?id=com.bunkalogic.desicionmakerapp');
              },
            ),
          ),
          SizedBox(width: 1.w,),
          IconButtonWidget(
            icon: prefs.whatTheme
                ? Icons.light_mode_rounded
                : Icons.dark_mode_rounded,
            onTap: () {
              prefs.whatTheme = !prefs.whatTheme;
              BlocProvider.of<ThemeAppCubit>(context)
                  .changedTheme(prefs.whatTheme);

              setState(() {});
            },
          ),
          IconButtonWidget(
            icon: Icons.more_vert_rounded,
            onTap: () {
              showBottomModalCustomWidget(context,
                  widget: BottomModalOptionsSettingsWidget(),
                  isExpanded: false);
            },
          ),
        ],
      ),
      body: Row(
        children: [
          SizedBox(
            width: 2.w,
            child: Container(
              color: prefs.whatTheme ? darkColorScheme.onPrimary.withOpacity(0.1) : lightColorScheme.onPrimary,
            ),
          ),
          Expanded(
            child: ListOverviewSplit(),
            flex: 1,
          ),
          SizedBox(
            width: 10.w,
          ),
          _listProsConsPage(),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
    );
  }

  Widget _listProsConsPage() {

    

    return BlocBuilder<SelectedListCubit, SelectedListState>(
      // buildWhen: (p, c) => p.listSelected.id == c.listSelected.id,
      builder: (context, state) {
        Key listKey = UniqueKey();
        state.copyWith(listSelected: state.listSelected);
        ListProsCons list = state.listSelected ?? ListProsCons.empty();
        return Expanded(
          child: ListProsAndConsPage(
            key: listKey,
            list: list,
          ),
          flex: 2,
        );
      },
    );
  }
}

class ListOverviewSplit extends StatefulWidget {
  ListOverviewSplit({Key? key}) : super(key: key);

  @override
  State<ListOverviewSplit> createState() => _ListOverviewSplitState();
}

class _ListOverviewSplitState extends State<ListOverviewSplit> {
  
  Preferences prefs = Preferences();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: OverviewListBody(),
      backgroundColor: prefs.whatTheme ? darkColorScheme.onPrimary.withOpacity(0.1) : lightColorScheme.onPrimary,
      floatingActionButton: FabExtendedWidget(
          title: "Create",
          icon: Icons.create_rounded,
          onTap: () {
            showBottomModalCustomWidget(context,
                widget: BottomModalCreateWidget(
                  listEdit: ListProsCons.empty(),
                ),
                isExpanded: false);
          },
          isScrolling: true),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
