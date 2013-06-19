package Entities.Player 
{
	
import org.flixel.*;
import Entities.Levels.*;

	public class playerCollision extends FlxSprite
	{
		
		public function playerCollision(x:uint, y:uint)
		{
			super(x, y);
			makeGraphic(11, 13, 0xffaa2222);
			maxVelocity.x = 80;
			maxVelocity.y = 200;
			acceleration.y = 200;
			drag.x = maxVelocity.x * 4;
			x = 10;
			y = 230; 
		}
		
		override public function update():void
		{ 
			super.update();
			
		}
		
	}

}