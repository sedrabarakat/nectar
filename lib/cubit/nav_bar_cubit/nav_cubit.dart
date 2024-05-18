import 'package:flutter_bloc/flutter_bloc.dart';

import 'nav_states.dart';

class Navigator_Cubit extends Cubit<Navigator_states>{

  Navigator_Cubit() : super(Init_Nav_State());

  static Navigator_Cubit get(context) => BlocProvider.of(context);

  int index=0;

  void change_index(int value){
    index=value;
    emit(Change_Index_State());
  }


}