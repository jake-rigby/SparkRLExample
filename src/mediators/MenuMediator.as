package mediators
{
	import uk.co.jakerigby.sparkrl.framework.ui.enums.ViewMode;
	import uk.co.jakerigby.sparkrl.framework.ui.events.ViewTrigger;
	import uk.co.jakerigby.sparkrl.framework.ui.mediators.ViewMediator;
	import views.Hello;
	import views.Menu;
	
	public class MenuMediator extends ViewMediator
	{
		[Inject] public var view:Menu;
		
		override public function onRegister():void
		{
			// always need these
			super.onRegister();
			
			// launching a view. Can be static, be available for injection or accept a more complex, untyped model call as an argument - just this one line to set it all up
			view.sayHello.add(function():void{
				dispatch(new ViewTrigger(ViewTrigger.ADD,new Hello(),ViewMode.MODAL))
			});
		}
		
		override public function onRemove():void
		{
			// always need these
			super.onRemove();
			
			view.sayHello.removeAll();
		}
	}
}