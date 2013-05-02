package org.rfaisal.logging.levels 
{
	import org.rfaisal.logging.*;
	/**
	 * This class defines the debug level of the ProcessingLogger
	 * @author Faisal Rahman
	 */
	public class DebugProcessingLogger extends ProcessingLogger 
	{
		/**
		 * @param	next Set the next logger in the chain of responsibility.
		 */
		public function DebugProcessingLogger(next:IProcessingLogger=null) 
		{
			super(LoggingLevel.DEBUG);
			this.next = next;
		}
		/**
		 * @inheritDoc
		 */
		protected override function process(className:String, logMsg:String = "", data:Object = null):void {
			LogWritter.writeToConsole("DebugLogger", className, logMsg, data);
		}
	}

}