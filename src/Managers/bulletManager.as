package Managers 
{
	
import Entities.Player.playerBullet;
import org.flixel.*;

	public class bulletManager extends FlxGroup
	{
		public var numBullets:int = 20;
		private var firstAvail:playerBullet;
		
		public function bulletManager() 
		{
			super();

			for (var i:int = 0; i < numBullets; i++) 
			{
				add(new playerBullet())
			}
			
		}
		
		public function fire(position:FlxPoint, velocity:FlxPoint):void
		{
			firstAvail = getFirstAvailable(playerBullet) as playerBullet;
			 
			if(firstAvail)
			{	
				playerBullet(firstAvail).fire(position, velocity);
			}
		}

		
	}

}