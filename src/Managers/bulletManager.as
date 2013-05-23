package Managers 
{
	
import Entities.Player.playerBullet;
import org.flixel.*;

	public class bulletManager extends FlxGroup
	{
		public var numBullets:int = 30;
		private var firstAvail:FlxObject;
		
		public function bulletManager() 
		{
			super();

			for (var i:int = 0; i < numBullets; i++) 
			{
				add(new playerBullet())
			}
			
		}
		
		public function fire(bx:int, by:int):void
		{
			firstAvail = getfirstAvail();
                                               
			if(firstAvail)
			{
				playerBullet(firstAvail).fire(bx, by);
			}
		}

		
	}

}