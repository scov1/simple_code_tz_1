abstract class EventBlocLocation{}


class EventLocationFilterByName extends EventBlocLocation{
  final String name;

  EventLocationFilterByName(this.name);
}