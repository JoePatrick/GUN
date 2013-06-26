package Entities.Player 
{
import org.flixel.*;
import Entities.*;
               
	public class playerEntity extends FlxSprite
	{
		public var face:uint;
		public  static var onWall:Boolean;
		
		public function playerEntity(x:uint, y:uint)
		{
			super(x, y);
			makeGraphic(10, 12, 0xffaa1111);
			maxVelocity.x = 80;
			maxVelocity.y = 200;
			acceleration.y = 200;
			drag.x = maxVelocity.x * 4;
			x = 10;
			y = 220;
			
			
		}
		
                               
		override public function update():void
		{ 
			//face == 0;
			
			acceleration.x = 0;
		if (FlxG.keys.LEFT)
		{
			acceleration.x = -maxVelocity.x * 4;
			face = 0;
		}
		if (FlxG.keys.RIGHT)
		{
			acceleration.x = maxVelocity.x * 4;
			
			face = 1;
		}
		
		if ((FlxG.keys.justPressed("SPACE") && isTouching(FlxObject.FLOOR)) || ((FlxG.keys.justPressed("SPACE") && !isTouching(FlxObject.FLOOR) && (onWall = true))))
			{
				velocity.y = -maxVelocity.y / 2;
				
				if (onWall)
				{
					if (face == 1)
					{
						velocity.x = -maxVelocity.x / 2;
					}
				
					if (face == 0)
					{
						velocity.x = maxVelocity.x / 2;
					}
				}
			}
		
	
			
		 if (FlxG.keys.justPressed("X"))
			{
				
			if (face == 0)
				{
					Registry.bullets.fire(new FlxPoint(x, y), new FlxPoint( -100, 0));
				}
			if (face == 1)
				{
					Registry.bullets.fire(new FlxPoint(x, y), new FlxPoint( +100, 0));
				}
			}	
			
			if (isTouching(FlxObject.LEFT))
			{
				face = 0;
				onWall = true;
			}

			else if (isTouching(FlxObject.RIGHT))
			{
		
				face = 1;
				onWall = true;
			}
			super.update();
			
			
		}
	}

}