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

		}
		
		public function fire(position:FlxPoint, velocity:FlxPoint):void
		{
			x = position.x;
			y = position.y;
			this.velocity = velocity;
			exists = true;
		}
		
		override public function update():void
		{             
			super.update();
			
			
		
		 if (exists && x < -10) 
			{
				exists = false;
			}
		if (exists && x < 10)
		{
			exists = false;
		}
		
			
		
		}
		
	}
	
}