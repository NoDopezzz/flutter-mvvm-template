import 'dart:async';

import 'package:flutter/material.dart';

import 'app_view_model.dart';

///[AppView] is base widget for each screen. It is immutable and added by creating is builder of StatelessWidget
@immutable
class AppView<TViewModel extends AppViewModel, TViewState>
    extends StatefulWidget {
  final Widget Function(BuildContext, TViewState) builder;

  ///[viewModel] is ViewModel of this View. As a rule it should be provided by LocatorManager.locator<*ViewModel class*>
  final TViewModel viewModel;

  ///[onDispose] is used called when State is about to dispose, so you can close streams or clear animation controllers
  final void Function() onDispose;

  ///[isDisposable] is a flag to set ViewModel ability to dispose. As a default it's true. 
  ///ViewModel can be not disposable when it is part of MainScreen (bottom navigation)
  final bool isDisposable;

  AppView({
    @required this.builder, 
    @required this.viewModel, 
    this.onDispose, 
    this.isDisposable = true,
  });
  
  @override
  State<StatefulWidget> createState() {
    return AppState<TViewModel, TViewState>(
      builder: builder,
      viewModel: viewModel,
      onDispose: onDispose,
      isDisposable: isDisposable,
    );
  }
}

class AppState<TViewModel extends AppViewModel, TViewState>
    extends State<AppView> with SingleTickerProviderStateMixin {
  TViewModel _viewModel;
  Widget Function(BuildContext, TViewState) _builder;
  void Function() _onDispose;
  bool _isDisposable;
  StreamSubscription viewStateSubscribtion;

  ///[state] contains current ViewState of View. It will be updated when ViewModel updates subject
  TViewState state;

  AppState({
    @required Widget Function(BuildContext, TViewState) builder,
    @required TViewModel viewModel,
    void Function() onDispose,
    bool isDisposable,
  }) {
    _builder = builder;
    _viewModel = viewModel;
    _onDispose = onDispose;
    _isDisposable = isDisposable;
  }

  @override
  void initState() {
    super.initState();
    viewStateSubscribtion = _viewModel.viewStateSubject.listen((viewState) {
      setState(() {
        state = viewState;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _builder(context, state);
  }

  @override
  void dispose() {
    _onDispose?.call();
    if (_isDisposable) {
      _viewModel.dispose();
    }
    viewStateSubscribtion.cancel();
    super.dispose();
  }
}
