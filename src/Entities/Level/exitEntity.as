package Entities.Level 
{
	import org.flixel.*;
	import Entities.Player.*;
	import GameStates.*;
	
	public class exitEntity extends FlxSprite
	{
		
		public function exitEntity(x:uint, y:uint) 
		{
			super(x, y);
			makeGraphic(14,16,0xff3f3f3f);
			exists = true;
		}
		
		public function win(exitEntity:FlxSprite, playerEntity:FlxSprite):void
		{
			playerEntity.kill();
			FlxG.switchState(new EndState());
		}
		
		override public function update():void
		{
			trace(x);
			trace(y);
			super.update();
			
		}
	}

}