package org.rfaisal.logging.levels 
{
	import org.rfaisal.logging.*;
	/**
	 * This class defines the fatal level of the ProcessingLogger
	 * @author Faisal Rahman
	 */
	public class FatalProcessingLogger extends ProcessingLogger 
	{
		/**
		 * @param	next Set the next logger in the chain of responsibility.
		 */
		public function FatalProcessingLogger(next:IProcessingLogger=null) 
		{
			super(LoggingLevel.FATAL);
			this.next = next;
		}
		/**
		 * @inheritDoc
		 */
		protected override function process(className:String, logMsg:String = "", data:Object = null):void {
			LogWritter.writeToDB("FatalLogger", className, logMsg, data, true);
		}
	}

}