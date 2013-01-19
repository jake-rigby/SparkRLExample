package commands
{
	import org.robotlegs.mvcs.Command;
	
	import uk.co.jakerigby.sparkrl.framework.ui.enums.ViewMode;
	import uk.co.jakerigby.sparkrl.framework.ui.events.ViewTrigger;
	import views.Menu;
	
	public class Initialise extends Command
	{
		override public function execute():void
		{
			dispatch(new ViewTrigger(ViewTrigger.ADD, new Menu(), ViewMode.DESKTOP));
		}
	}
}