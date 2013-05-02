package org.rfaisal.logging 
{
	/**
	 * This interface defines functionalities for each of the processing objects in a chain-of-responsibility pattern.
	 * @author Faisal Rahman
	 */
	public interface IProcessingLogger 
	{
		/**
		 * The processing unit (this function does the logging)
		 * @param	level level of logging. For details, look into LoggingLevel class.
		 * @param	className name of the class the logging is performed. Can be accessed by flash.utils.getQualifiedClassName(this)
		 * @param	logMsg The logging message
		 * @param	data Additional data. Saved/shown as a JSON object.
		 */
		function log(level:uint, className:String, logMsg:String = "", data:Object = null):void;
	}
	
}