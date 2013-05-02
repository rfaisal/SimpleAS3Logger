package org.rfaisal.logging 
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.events.IOErrorEvent
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	import flash.net.URLRequestMethod;
	/**
	 * A static class to perform the actual logging.
	 * Change dbServerURL and authString variables during installation.
	 * @author Faisal Rahman
	 */
	public final class LogWritter 
	{
		private static var dbServerURL:String = "http://localhost/SimpleAS3LoggerServer.php";
		private static var authString:String = "f5a666ce1cf64709e2bdf6bd517cf71c19acbae4";
		public function LogWritter() 
		{
			throw new Error("Static class");
		}
		/**
		 * Write to the console. 
		 * @param	loggerName
		 * @param	className
		 * @param	logMsg
		 * @param	data
		 */
		public static function writeToConsole(loggerName:String, className:String, logMsg:String = "", data:Object = null):void 
		{ 
			trace("["+loggerName+"]","[In Class: "+className+"]", "[Message: "+logMsg+"]", "[Data: "+JSON.stringify(data)+"]");
		}
		/**
		 * Write to the database. 
		 * @param	loggerName
		 * @param	className
		 * @param	logMsg
		 * @param	data
		 */
		public static function writeToDB(loggerName:String, className:String, logMsg:String = "", data:Object = null,verbose:Boolean=false):void 
		{
			var loader:URLLoader = new URLLoader();
			loader.addEventListener(Event.COMPLETE, function(ev:Event):void {
					if (verbose) {
						trace("Complete. Server response: "+ev.currentTarget.data, "The original log:");
						writeToConsole(loggerName, className, logMsg, data);
					}
			});
			loader.addEventListener(IOErrorEvent.IO_ERROR, function(ev:IOErrorEvent):void {
				trace("Server Failed. Server response: "+ev.text, "The original log:");
				writeToConsole(loggerName, className, logMsg, data);
			});
			var vars : URLVariables = new URLVariables ();
			vars.auth_string = authString;
			vars.logger_name = loggerName;
			vars.class_name = className;
			vars.log_msg = logMsg;
			vars.data = JSON.stringify(data);
			var  request:URLRequest = new URLRequest(dbServerURL);
			request.data = vars;
			request.method = URLRequestMethod.POST;
			loader.load(request);
		}
	}

}