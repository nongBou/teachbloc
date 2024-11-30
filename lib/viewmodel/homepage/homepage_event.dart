abstract class HomepageEvent {}

class HomePageGetAllData extends HomepageEvent {}

class HomePageGetOnly extends HomepageEvent {
  final int id;
  HomePageGetOnly({required this.id});
}
