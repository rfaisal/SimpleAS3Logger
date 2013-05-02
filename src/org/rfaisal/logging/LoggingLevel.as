package org.rfaisal.logging 
{
	/**
	 * A static class that defines the constants for the levels of logging.
	 * If you need more levels define them in the gaps of the current levels.
	 * @author Faisal Rahman
	 */
	public final class LoggingLevel 
	{
		/**
		 * Used for temporaty testing. 
		 * Remove it as soon as you are done with it. Typically prints in the console (although ignored in the release builds).
		 */
		public static const TRACE:uint = 8;
		/**
		 * Any message that is helpful in tracking the flow through the system and isolating the potential issues.
		 * Keep it in the code of the final product. Typically prints in the console (although ignored in the release builds).
		 */
		public static const DEBUG:uint = 16;
		/**
		 * Something needs to be fixed but not immediately. Also, use if in cases of TODOs.
		 * Keep it in the code of the final product. Typically prints in the console (although ignored in the release builds).
		 */
		public static const WARNING:uint = 32;
		/**
		 * General info of the system. To perform additional analysis of the system (like analytics). Ex. User Login, Session start, etc.
		 * Typically saved in the database.
		 */
		public static const INFO:uint = 64;
		/**
		 * The errors of the system. Put in the error handellers. Used when the product is NOT losing money for failure.
		 * Typically saved in the database.
		 */
		public static const ERROR:uint = 128;
		/**
		 * The fatal errors of the system. Put in the error handellers. Used when the product is LOSING money for failure.
		 * Typically saved in the database.
		 */
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