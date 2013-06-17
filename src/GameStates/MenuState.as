package GameStates 
{
	import org.flixel.*;
	import GameStates.*;
	
	public class MenuState extends FlxState
	{
		public var title:FlxText;
		public var click:FlxText;
		public var controls:FlxText;
		
		public function MenuState() 
		{
			title = new FlxText(20, 10, FlxG.width - 40, "GunFace");
			title.alignment = "center";
			title.size = 22;
                                               
			click = new FlxText(20, FlxG.height - 30, FlxG.width - 40, "Click to Continue");
			click.alignment = "center";
			click.size = 8;
			
			controls = new FlxText(20, FlxG.height - 70, FlxG.width - 40, "X to Shoot Arrow Keys to Move");
			controls.alignment = "center";
			controls.size = 8;
			
			add(title);
			add(click);
			add(controls);
			
			FlxG.mouse.show();
			
		}
		
		override public function update():void
		{             
			super.update();
			
			    if (FlxG.mouse.justPressed())
				{
					FlxG.mouse.hide();
					FlxG.switchState(new PlayState());
				}
		}
		
		
	}

}