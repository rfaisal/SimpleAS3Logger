package org.rfaisal.logging 
{
	/**
	 * A static class that defines the constants for the levels of logging.
	 * @author Faisal Rahman
	 */
	public final class LoggingLevel 
	{
		public static const TRACE:uint = 8;
		public static const DEBUG:uint = 16;
		public static const WARNING:uint = 32;
		public static const INFO:uint = 64;
		public static const ERROR:uint = 128;
		public static const FATAL:uint = 256;
		
		/**
		 * @private
		 * Useless constructor.
		 */
		public function LoggingLevel() 
		{
			throw new Error("Static class");
		}
	}

}