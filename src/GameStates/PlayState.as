package GameStates
{
	import Entities.Player.*;
	import org.flixel.*;
	import Entities.Levels.*;
	import Managers.*;
				
	public class PlayState extends FlxState
	{                                             
		public function PlayState()
		{
			
			Registry.bullets = new bulletManager();     
			add(Registry.bullets);
			
			Registry.levels = new levelManager();
			add(Registry.levels);
			
			Registry.level1 = new levelEntity();
			Registry.level1.loadMap(FlxTilemap.arrayToCSV(Registry.levels.level1map,40), FlxTilemap.ImgAuto, 0, 0, FlxTilemap.AUTO);
			add(Registry.level1);
			
			Registry.playerC = new playerCollision(FlxG.width / 2 - 12, FlxG.height - 40);
			add(Registry.playerC);
			
			Registry.player = new playerEntity(FlxG.width / 2 - 12, FlxG.height - 40);
			add(Registry.player);
			
			
		}
                               
		override public function update():void
		{             
			super.update();
			
			FlxG.bgColor = 0xffaaaaaa;
			
			FlxG.collide(Registry.level1, Registry.player);
			FlxG.collide(Registry.level1, Registry.playerC);
		}
		
	}
}