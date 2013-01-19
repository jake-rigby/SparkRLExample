package views
{
	import org.osflash.signals.Signal;
	
	import uk.co.jakerigby.sparkrl.framework.ui.components.ViewBase;
	
	public class Menu extends ViewBase
	{
		// simpler wiring
		[SkinPart] public var sayHello:Signal;
	}
}