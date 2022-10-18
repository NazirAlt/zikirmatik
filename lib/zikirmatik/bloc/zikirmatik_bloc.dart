import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'zikirmatik_event.dart';
part 'zikirmatik_state.dart';

class ZikirmatikBloc extends Bloc<ZikirmatikEvent, ZikirmatikState> {
  ZikirmatikBloc() : super(ZikirmatikInitial()) {
    on<ZikirmatikEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
