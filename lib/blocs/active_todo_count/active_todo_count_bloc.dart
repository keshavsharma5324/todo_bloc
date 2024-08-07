import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'active_todo_count_event.dart';
part 'active_todo_count_state.dart';

class PendingTodoCountBloc
    extends Bloc<PendingTodoCountEvent, PendingTodoCountState> {
  final int initialPendingTodoCount;
  PendingTodoCountBloc({
    required this.initialPendingTodoCount,
  }) : super(PendingTodoCountState(pendingTodoCount: initialPendingTodoCount)) {
    on<CalculatePendingTodoCountEvent>((event, emit) {
      emit(state.copyWith(pendingTodoCount: event.pendingTodoCount));
    });
  }
}