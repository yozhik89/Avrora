package facade 
{
	import org.puremvc.as3.patterns.facade.Facade;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Sergii Radkivskyi
	 */
	public class ApplicationFacade extends Facade 
	{
		private static var instance:ApplicationFacade;
		
		public function ApplicationFacade() 
		{
			super();
			
		}
		
		public static function getInstance():ApplicationFacade
		{
			if(!instance)
				instance = new ApplicationFacade();
			return instance;
		}
		
		/**
		 * When the game start. call for the startup function, pass the game's startup command and the root DisplayObject
		 * @param command the class that initite the game (it can be SimpleCommand or MacroCommand).
		 * @param root this will be the main class of the application.
		 */		
		public function startup( command:Class, root:Sprite ):void 
		{
			registerCommand( "startup", command );
			sendNotification( "startup", root );
		}
	}

}