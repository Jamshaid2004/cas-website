import 'package:bloc/bloc.dart';
import 'package:cas_website/src/presentation/home_page/controller/home_page_events.dart';
import 'package:cas_website/src/presentation/home_page/controller/home_page_states.dart';

class HomePageBloc extends Bloc<HomePageEvents, HomePageStates> {
  HomePageBloc() : super(HomePageInitialState());
}
