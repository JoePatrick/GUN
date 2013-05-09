package Entities.Player
{
	import org.flixel.*;
	
	public class playerEntity extends FlxSprite
	{
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
		
		override public function update():void;
		{
			
		acceleration.x = 0;
		if(FlxG.keys.LEFT)
			acceleration.x = -maxVelocity.x * 4;
			
		if(FlxG.keys.RIGHT)
			acceleration.x = maxVelocity.x * 4;

		
		if (FlxG.keys.SPACE && (FlxG.keys.DOWN && isTouching(FlxObject.FLOOR)))
			{
				velocity.y = -maxVelocity.y / 2;
			}
		
		if (FlxG.keys.SPACE && (FlxG.keys.RIGHT && isTouching(FlxObject.RIGHT)))
			{
				velocity.y = -maxVelocity.y / 2;
				velocity.x = -maxVelocity.x;
			}
		
		if (FlxG.keys.SPACE && (FlxG.keys.LEFT && isTouching(FlxObject.LEFT)))
			{
				velocity.y = -maxVelocity.y / 2;
				velocity.x = maxVelocity.x;
			}
			
			super.update();
		}
	}

}