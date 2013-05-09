package
{
 import org.flixel.*;
 import GameStates.*;
 [SWF(width="640", height="480", backgroundColor="#000000")] 
 public class Main extends FlxGame
 {
  public function Main():void
  {
   super(320, 240, PlayState, 2);
  }
 }
}