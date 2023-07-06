import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeSate> {
  HomeCubit(): super(InitialState());

  TabController? controller ;

  init({required BuildContext context,required TickerProvider tickerProvider,required int openStaysTab}){
    controller = TabController(length: 2, vsync: tickerProvider);
  
    controller?.animateTo(openStaysTab,duration: Duration(microseconds: 30000),curve: Curves.ease);
  }

}

