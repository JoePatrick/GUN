package Entities.Player 
{
	
import org.flixel.*;
import Entities.*;

	public class playerCollision extends FlxSprite
	{
		public var onwall:uint;
		
		public function playerCollision(x:uint, y:uint)
		{
			super(x, y);
			makeGraphic(11, 13, 0x00aa1111);
			maxVelocity.x = 80;
			maxVelocity.y = 200;
			acceleration.y = 200;
			drag.x = maxVelocity.x * 4; 
			
		}
		
		override public function update():void
		{ 
			
			
			if (isTouching(FlxObject.LEFT))
			{
				onwall == 1;
			}
			
			if (isTouching(FlxObject.RIGHT))
			{
				onwall == 2;
			}
			
			x = Registry.player.x;
			y = Registry.player.y; 
			super.update();
		}
		
	}

}