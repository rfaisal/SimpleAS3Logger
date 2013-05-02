package org.rfaisal.logging.levels 
{
	import org.rfaisal.logging.*;
	/**
	 * This class defines the error level of the ProcessingLogger
	 * @author Faisal Rahman
	 */
	public class ErrorProcessingLogger extends ProcessingLogger 
	{
		/**
		 * @param	next Set the next logger in the chain of responsibility.
		 */
		public function ErrorProcessingLogger(next:IProcessingLogger=null) 
		{
			super(LoggingLevel.ERROR);
			this.next = next;
		}
		/**
		 * @inheritDoc
		 */
		protected override function process(className:String, logMsg:String = "", data:Object = null):void {
			LogWritter.writeToDB("ErrorLogger", className, logMsg, data, true);
		}
	}

}