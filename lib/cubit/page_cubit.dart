import 'package:bloc/bloc.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

  // Berguna untuk memberi nilai halaman mana yang akan berubah
  void setPage(int newPage) {
    emit(newPage);
  }
}
