package org.rfaisal.logging 
{
	/**
	 * This is the abstract implementation of IProcessingLogger
	 * In log(...) function: change ...else if (next != null)... to ...if (next != null)... if you want all the higer level to process the same log, i.e., logging to Trace will log to all the upper levels.
	 * @author Faisal Rahman
	 */
	public class ProcessingLogger implements IProcessingLogger 
	{
		/**
		 * next logger in the chain of responsibility.
		 */
		protected var next:IProcessingLogger;
		private var _loggingLevel:uint;
		public function ProcessingLogger(_loggingLevel:uint) 
		{
			this._loggingLevel = _loggingLevel;
		}
		/**
		 * @inheritDoc
		 */
		public function log(level:uint, className:String, logMsg:String = "", data:Object = null):void 
		{
			if (level <= _loggingLevel) {
				process(className, logMsg, data);
			}
			else if (next != null) {
				next.log(level, className, logMsg, data);
			}
		}
		/**
		 * Process the logging request. Abstract method in ProcessingLogger. Must be overridden in the extended class.
		 * Call one of the methods of the LogWriter class in the extended classes.
		 * @param	className name of the class typically flash.utils.getQualifiedClassName(this)
		 * @param	logMsg Message
		 * @param	data additional data. Saved as JSON object.
		 */
		protected function process(className:String, logMsg:String = "", data:Object = null):void {
			throw new Error("Abstract method. Must be overridden");
		}
	}

}