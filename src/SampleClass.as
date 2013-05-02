package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.utils.getQualifiedClassName;
	import org.rfaisal.logging.*;
	
	/**
	 * A sample class that you can run to test your installation. It should print to console and write to database.
	 * @author Faisal Rahman
	 */
	public class SampleClass extends Sprite 
	{
		public function SampleClass():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			/*
			 * Entry point of this class.
			 */
			var ob:Object = new Object();
			ob.faisal = new Object();
			ob.faisal.rahman = "rahman value";
			ob.kasra = "kasra value";
			
			SimpleLogger.getLogger().log(LoggingLevel.WARNING, getQualifiedClassName(this), "Warning log", ob);
			SimpleLogger.getLogger().log(LoggingLevel.TRACE, getQualifiedClassName(this), "Trace log", ob);
			SimpleLogger.getLogger().log(LoggingLevel.DEBUG, getQualifiedClassName(this), "Debug log", ob);
			SimpleLogger.getLogger().log(LoggingLevel.INFO, getQualifiedClassName(this), "Info log", ob);
			SimpleLogger.getLogger().log(LoggingLevel.ERROR, getQualifiedClassName(this), "Error log", ob);
			SimpleLogger.getLogger().log(LoggingLevel.FATAL, getQualifiedClassName(this), "FATAL log",ob);
		}
		
	}
	
}