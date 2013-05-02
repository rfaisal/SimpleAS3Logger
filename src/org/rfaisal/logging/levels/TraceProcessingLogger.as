package org.rfaisal.logging.levels 
{
	import org.rfaisal.logging.*;
	/**
	 * This class defines the trace level of the ProcessingLogger
	 * @author Faisal Rahman
	 */
	public class TraceProcessingLogger extends ProcessingLogger 
	{
		/**
		 * @param	next Set the next logger in the chain of responsibility.
		 */
		public function TraceProcessingLogger(next:IProcessingLogger=null) 
		{
			super(LoggingLevel.TRACE);
			this.next = next;
		}
		/**
		 * @inheritDoc
		 */
		protected override function process(className:String, logMsg:String = "", data:Object = null):void {
			LogWritter.writeToConsole("TraceLogger", className, logMsg, data);
		}
	}

}