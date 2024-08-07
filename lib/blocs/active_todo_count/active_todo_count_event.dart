part of 'active_todo_count_bloc.dart';

abstract class PendingTodoCountEvent {

  const PendingTodoCountEvent();

  @override
  List<Object> get props => [];
}

class CalculatePendingTodoCountEvent extends PendingTodoCountEvent{
  final int pendingTodoCount;

  CalculatePendingTodoCountEvent(this.pendingTodoCount);
  @override
  List<Object> get props => [pendingTodoCount];

  @override
  String toString() {
    return 'CalculatePending{pendingTodoCount: $pendingTodoCount}';
  }

}