package GameStates 
{
	import org.flixel.*;
	import GameStates.*;
	
	public class EndState extends FlxState
	{
		
		public var title:FlxText;
		public var press:FlxText;
		public var details:FlxText;
		
		public function EndState() 
		{
			title = new FlxText(20, 10, FlxG.width - 40, "The End");
			title.alignment = "center";
			title.size = 22;
                                               
			details = new FlxText(20, FlxG.height - 70, FlxG.width - 40, "Thank you for playing an early demo of my game");
			details.alignment = "center";
			details.size = 8;
			
			press = new FlxText(20, FlxG.height - 30, FlxG.width - 40, "Press R if you want to play again");
			press.alignment = "center";
			press.size = 8;
			
			add(title);
			add(press);
			add(details);
			
			FlxG.mouse.show();	
		}
		
		override public function update():void
		{             
			super.update();
			
			    if (FlxG.keys.R)
				{
					FlxG.mouse.hide();
					FlxG.switchState(new PlayState());
				}
		}
		
	}

}