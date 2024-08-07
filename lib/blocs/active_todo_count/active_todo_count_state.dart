part of 'active_todo_count_bloc.dart';

class PendingTodoCountState extends Equatable {
  final int pendingTodoCount;

  const PendingTodoCountState({
    required this.pendingTodoCount,
  });

  factory PendingTodoCountState.initial(){
    return const PendingTodoCountState(pendingTodoCount: 0);
  }

  @override
  List<Object> get props => [pendingTodoCount];

  @override
  String toString() {
    return 'ActiveTodoCountState{activeTodoCount: $pendingTodoCount}';
  }

  PendingTodoCountState copyWith({
    int? pendingTodoCount,
  }) {
    return PendingTodoCountState(
      pendingTodoCount: pendingTodoCount ?? this.pendingTodoCount,
    );
  }
}