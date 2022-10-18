import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'zikirmatik_state.dart';

class ZikirmatikCubit extends Cubit<ZikirmatikState> {
  ZikirmatikCubit() : super(ZikirmatikInitial());
}
