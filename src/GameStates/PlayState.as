package GameStates
{
	import Entities.Level.*;
	import Entities.Player.*;
	import org.flixel.*;
	import Managers.*;
				
	public class PlayState extends FlxState
	{                                             
		public function PlayState()
		{
			
			Registry.bullets = new bulletManager();     
			add(Registry.bullets);
			
			Registry.levels = new levelManager();
			add(Registry.levels);
			
			Registry.playerC = new playerCollision(FlxG.width / 2 - 12, FlxG.height - 40);
			add(Registry.playerC);
			
			Registry.player = new playerEntity(32,220);
			add(Registry.player);
			
			Registry.exit = new exitEntity(290,16);
			add(Registry.exit);
			
			//Registry.coins =  new coinEntities();
			//add(Registry.coins);
			
			
		}
                               
		override public function update():void
		{             
			super.update();
			
			FlxG.bgColor = 0xffaaaaaa;
			
			FlxG.overlap(Registry.exit,Registry.player,Registry.exit.win);
			FlxG.collide(Registry.levels.level1, Registry.player);
			FlxG.collide(Registry.levels.level1, Registry.playerC);
		}
		
	}
}