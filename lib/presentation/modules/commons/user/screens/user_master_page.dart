import 'package:dextra/di/injectable.dart';
import 'package:dextra/presentation/app/blocs/authentication/authentication_bloc.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/widgets/appBar/common_app_bar.dart';
import 'package:dextra/presentation/modules/commons/widgets/menu/menu.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:dextra/presentation/router/router_config/router.dart';
import 'package:dextra/shareds/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserMasterPage extends StatefulWidget {
  final Widget child;
  const UserMasterPage({
    super.key,
    required this.child,
  });

  @override
  State<UserMasterPage> createState() => _UserMasterPageState();
}

class _UserMasterPageState extends State<UserMasterPage> {
  final _authBloc = getIt.get<AuthenticationBloc>();

  @override
  Widget build(BuildContext context) {
    final isDesktop = AppUtils.isDesktopScreen(context);

    void onAuthApiStateChanged() {
      if (_authBloc.state.apiState?.status == ApiStatus.error) {
        // Handle error state
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                  _authBloc.state.apiState!.errorResponse?.message ?? 'Error')),
        );
      } else if (_authBloc.state.apiState?.status == ApiStatus.hasData) {
        DextraRouter.go(DextraRouter.authPage);
      }
    }

    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      bloc: _authBloc,
      listenWhen: (previous, current) => previous.apiState != current.apiState,
      listener: (context, state) {
        onAuthApiStateChanged();
      },
      builder: (context, state) {
        return ScreenContainer(
          isShowLoading: state.apiState?.status == ApiStatus.loading,
          child: Scaffold(
              drawer: isDesktop ? null : Menu(),
              body: Row(
                children: [
                  if (isDesktop == true) ...[Menu()],
                  Expanded(
                    child: Column(
                      children: [
                        CommonAppBar(),
                        Expanded(
                          child: widget.child,
                        )
                      ],
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}
