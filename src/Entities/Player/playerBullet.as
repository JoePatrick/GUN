package Entities.Player 
{
import org.flixel.*;

	public class playerBullet extends FlxSprite
	{
		public var speed:int = 200;
		
		public function playerBullet() 
		{
			 super(0, 0);
                                               
			makeGraphic(5,5,0x00ff00);
                                               
			exists = false;
			
		}
		
		public function fire(bx:int, by:int):void
		{
			x = bx;
			y = by;
			velocity.y = -speed;
			exists = true;
		}
		
		override public function update():void
		{             
			super.update();
		
			if (exists && y < -10)
			{
				exists = false;
			}
		
		}
		
	}
	
}