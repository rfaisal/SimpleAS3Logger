package org.rfaisal.logging
{
	import org.rfaisal.logging.levels.*;
	/**
	 * The entry point of this library. 
	 * A singleton implementation. Usage: SimpleLogger.getLogger().log(...);
	 * @author Faisal Rahman
	 */
    public class SimpleLogger
    {
		private static var instance:SimpleLogger;
		private var pLogger:IProcessingLogger;
		
		/**
		 * The access point of the singleton.
		 * @return a Logger
		 */
		public static function getLogger():IProcessingLogger
		{
			if( instance == null ) 
					instance = new SimpleLogger( new SingletonEnforcer() );
			return instance.pLogger;
		}
		/**
		 * 
		 * @param	pvt to make sure only one instance is created per running application
		 */
		public function SimpleLogger( pvt:SingletonEnforcer )
		{
			if (pvt == null) {
				throw new Error("Error: Instantiation failed: Use SimpleLogger.getLogger() instead of new.");
			}
			else {
				var fatalLogger:IProcessingLogger = new FatalProcessingLogger();
				var errorLogger:IProcessingLogger = new ErrorProcessingLogger(fatalLogger);
				var infoLogger:IProcessingLogger = new InfoProcessingLogger(errorLogger);
				var warningLogger:IProcessingLogger = new WarningProcessingLogger(infoLogger);
				var debugLogger:IProcessingLogger = new DebugProcessingLogger(warningLogger);
				var traceLogger:IProcessingLogger = new TraceProcessingLogger(debugLogger);
		
				pLogger = traceLogger;
			}
		}
    }
}
internal class SingletonEnforcer{}

