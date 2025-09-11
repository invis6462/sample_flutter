class NewState{

  // TODO("придумать обратную связь с ui лучше")
  final bool isBackNavigation;

  const NewState({this.isBackNavigation = false});


  NewState copyWith({bool? isBackNavigation}) {
    return NewState(isBackNavigation: isBackNavigation ?? this.isBackNavigation);
  }
}