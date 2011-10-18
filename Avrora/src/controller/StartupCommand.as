package controller 
{
	import org.puremvc.as3.patterns.command.SimpleCommand;
	import org.puremvc.as3.interfaces.INotification;
	/**
	 * ...
	 * @author Sergii Radkivskyi
	 */
	public class StartupCommand extends SimpleCommand 
	{
		override public function execute(notification:INotification):void
		{
			trace("Startup command. Here we will begin to start writting our code.");
		}
	}

}