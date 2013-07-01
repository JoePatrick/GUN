package Entities.Level 
{
	import org.flixel.*;
	
	public class coinEntities extends FlxGroup
	{
		
		public function coinEntities() 
		{
			createCoin(18,4);
			createCoin(12,4);
			createCoin(9,4);
			createCoin(8,11);
			createCoin(1,7);
			createCoin(3,4);
			createCoin(5,2);
			createCoin(15,11);
			createCoin(16,11);

			
			createCoin(3,16);
			createCoin(4,16);
			createCoin(1,23);
			createCoin(2,23);
			createCoin(3,23);
			createCoin(4,23);
			createCoin(5,23);
			createCoin(12,26);
			createCoin(13,26);
			createCoin(17,20);
			createCoin(18,20);

			
			createCoin(21,4);
			createCoin(26,2);
			createCoin(29,2);
			createCoin(31,5);
			createCoin(34,5);
			createCoin(36,8);
			createCoin(33,11);
			createCoin(31,11);
			createCoin(29,11);
			createCoin(27,11);
			createCoin(25,11);
			createCoin(36,14);

			
			createCoin(38,17);
			createCoin(33,17);
			createCoin(28,19);
			createCoin(25,20);
			createCoin(18,26);
			createCoin(22,26);
			createCoin(26,26);
			createCoin(30,26);
		}
		
		public function createCoin(X:uint,Y:uint):void
		{
			var coin:FlxSprite = new FlxSprite(X*8+3,Y*8+2);
			coin.makeGraphic(2,4,0xffffff00);
			coinEntities.add(coin);
		}
		
		
		public function getCoin(coin:FlxSprite, playerEntity:FlxSprite):void
		{
			coin.kill();
			Registry.levels.score.text = "SCORE: "+(coinEntities.countDead()*100);
			if(coinEntities.countLiving() == 0)
			{
				Registry.levels.status.text = "Find the exit.";
				Registry.levels.exit.exists = true;
			}
		}
		
	}

}