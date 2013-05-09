package GameStates
{
	import Entities.Player.*;
	import org.flixel.*;
				
	public class PlayState extends FlxState
	{                                             
		public function PlayState()
		{
			Registry.player = new playerEntity(FlxG.width / 2 - 12, FlxG.height - 40);

			add(Registry.player);
		}
                               
		override public function update():void
		{             
			super.update();
		}
		
	}
}