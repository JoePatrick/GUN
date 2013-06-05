package Entities.Player 
{
import org.flixel.*;

	public class playerBullet extends FlxSprite
	{
		public var speed:int = 200;
		
		public function playerBullet() 
		{
			 super(0, 0);
                                               
			makeGraphic(5, 5, 0xffaa1111);
            maxVelocity.y = speed;
			maxVelocity.x = speed;
			exists = false;
			alive = false;
		}
		
		public function fire(bx:int, by:int):void
		{
			x = bx;
			y = by;
			velocity.y = -speed;
			exists = true;
			alive = true;
		}
		
		override public function update():void
		{             
			super.update();
		
			if (exists && y < -10)
			{
				alive = false;
				exists = false;
			}
		
		}
		
	}
	
}