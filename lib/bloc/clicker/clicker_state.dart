part of 'clicker_bloc.dart';

@immutable
abstract class ClickerState extends Equatable{
  final bool showcolor;
  ClickerState({this.showcolor = false});
  @override
  List<Object> get props => [showcolor];
}

class ClickerInitial extends ClickerState {}
class UpdateClicks extends ClickerState{
  final bool showcolor;
  UpdateClicks({this.showcolor}):super(showcolor:showcolor);
}