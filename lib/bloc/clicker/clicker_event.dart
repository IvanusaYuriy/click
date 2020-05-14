part of 'clicker_bloc.dart';

@immutable
abstract class ClickerEvent extends Equatable{
  final bool showcolor;
  ClickerEvent({
    this.showcolor = false
  });
  @override
  List<Object> get props => [showcolor];
}

class UpdateClick extends ClickerEvent{
  final bool showcolor;
  UpdateClick({this.showcolor}):super(showcolor:showcolor);
}
