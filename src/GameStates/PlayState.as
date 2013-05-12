package GameStates
{
	import Entities.Player.*;
	import org.flixel.*;
	import Entities.Levels.*;
				
	public class PlayState extends FlxState
	{                                             
		public function PlayState()
		{
			Registry.level1 = new levelEntity();
			Registry.level1.loadMap(FlxTilemap.arrayToCSV(Registry.level1.data,40), FlxTilemap.ImgAuto, 0, 0, FlxTilemap.AUTO);
			add(Registry.level1);
			
			Registry.player = new playerEntity(FlxG.width / 2 - 12, FlxG.height - 40);
			add(Registry.player);
		}
                               
		override public function update():void
		{             
			super.update();
		}
		
	}
}