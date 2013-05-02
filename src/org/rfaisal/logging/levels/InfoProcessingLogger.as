package org.rfaisal.logging.levels 
{
	import org.rfaisal.logging.*;
	/**
	 * This class defines the info level of the ProcessingLogger
	 * @author Faisal Rahman
	 */
	public class InfoProcessingLogger extends ProcessingLogger 
	{
		/**
		 * @param	next Set the next logger in the chain of responsibility.
		 */
		public function InfoProcessingLogger(next:IProcessingLogger=null) 
		{
			super(LoggingLevel.INFO);
			this.next = next;
		}
		/**
		 * @inheritDoc
		 */
		protected override function process(className:String, logMsg:String = "", data:Object = null):void {
			LogWritter.writeToDB("InfoLogger", className, logMsg, data, true);
		}
	}

}