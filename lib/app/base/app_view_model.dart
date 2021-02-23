import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

///[AppViewModel] is a parent class for all ViewModels on project.
///[TViewState] - class of view state of this widget.
///[TViewArgs] - class of arguments providing to sertains ViewModel
abstract class AppViewModel<TViewState, TViewArgs> {

  ///[viewStateSubject], BehaviorSubject of viewStates.
  ///View subscribes to that subject and change its ViewState when new is added
  BehaviorSubject<TViewState> viewStateSubject = BehaviorSubject<TViewState>();

  TViewArgs viewArgs;

  AppViewModel({@required TViewArgs args}) {
    viewArgs = args;
    viewStateSubject.add(initViewState());
  }

  ///[initViewState] is used to create initializing view state. Each ViewModel should implement this method
  TViewState initViewState();

  ///[makeRequest] is used to make async request
  ///[request] is result of long live method like requesting for network or database
  ///[onLoading], [onSuccess], [onError] are callbacks for each state of request
  void makeRequest<TData>({
    @required Future<TData> request,
    Function() onLoading,
    Function(TData data) onSuccess,
    Function(Error error) onError,
  }) async {
    onLoading?.call();
    await request.then((result) {
      onSuccess?.call(result);
    }).catchError((error) {
      onError?.call(error);
    });
  }

  ///[updateViewState] is called when we need to update our viewState. 
  ///For that we should get [viewStateValue], call copyWith with arguments of view state member we want to update
  void updateViewState({@required TViewState viewState}) {
    viewStateSubject.add(viewState);
  }

  TViewState get viewStateValue => viewStateSubject.value;

  ///[dispose] is called by View when it's about to destroy. 
  ///Also called only when isViewModelDisposable is true
  void dispose() {}
}
