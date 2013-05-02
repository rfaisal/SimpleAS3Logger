package org.rfaisal.logging.levels 
{
	import org.rfaisal.logging.*;
	/**
	 * This class defines the warning level of the ProcessingLogger
	 * @author Faisal Rahman
	 */
	public class WarningProcessingLogger extends ProcessingLogger 
	{
		/**
		 * @param	next Set the next logger in the chain of responsibility.
		 */
		public function WarningProcessingLogger(next:IProcessingLogger=null) 
		{
			super(LoggingLevel.WARNING);
			this.next = next;
		}
		/**
		 * @inheritDoc
		 */
		protected override function process(className:String, logMsg:String = "", data:Object = null):void {
			LogWritter.writeToConsole("WarningLogger", className, logMsg, data);
		}
	}

}