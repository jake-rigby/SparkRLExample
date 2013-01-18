package 
{
	import commands.Initialise;
	
	import mediators.MenuMediator;
	
	import uk.co.jakerigby.sparkrl.framework.robotlegs.ApplicationContext;
	import uk.co.jakerigby.sparkrl.framework.ui.components.ViewBase;
	import uk.co.jakerigby.sparkrl.framework.ui.events.SparkRLEvent;
	import uk.co.jakerigby.sparkrl.framework.ui.mediators.ViewMediator;
	
	import views.Hello;
	import views.Menu;
	
	public class SparkRLExampleContext extends ApplicationContext
	{
		override protected function mappings():void
		{
			// entry point
			commandMap.mapEvent(SparkRLEvent.STARUP_COMPLETE, Initialise);
			
			// views
			mediatorMap.mapView(Menu,MenuMediator,[ViewBase,Menu]);
			mediatorMap.mapView(Hello,ViewMediator,[ViewBase]);
		}
	}
}