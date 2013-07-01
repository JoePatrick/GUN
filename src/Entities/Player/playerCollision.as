package Entities.Player 
{
	
import org.flixel.*;
import Entities.*;

	public class playerCollision extends FlxSprite
	{
		
		
		public function playerCollision(x:uint, y:uint)
		{
			super(x, y);
			makeGraphic(14, 12, 0x00000000);	
		}
		
		override public function update():void
		{ 
			x = Registry.player.x - (width - Registry.player.width) / 2;
			y = Registry.player.y;
			
			if (playerEntity.onWall == true && !isTouching(FlxObject.WALL))
			{
				playerEntity.onWall = false;
			}
			
			super.update();
		}
		
	}

}