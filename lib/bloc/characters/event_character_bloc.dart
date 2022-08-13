abstract class EventBlocCharacter {}

class EventCharacterFilterByName extends EventBlocCharacter {
  final String name;

  EventCharacterFilterByName(this.name);
}
