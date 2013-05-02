# SimpleAS3Logger
SimpleAS3Logger is a simple, flexible logging class in AS3 that comes with a simple php script to save important logging info in a mysql database.

## License
SimpleAS3Logger is published under MIT License. That means you have the right to do whatever you want with it. For more info, scroll down to the bottom for License terms.

## Installation
1. Run this command `git clone git://github.com/rfaisal/SimpleAS3Logger.git` or download as a zip.
2. Server setup: Run simple_as3_logger.sql on your database. Write down the database info in SimpleAS3LoggerServer.php
3. Client setup: Write the location of SimpleAS3LoggerServer.php file to LogWritter.dbServerURL variable.
4. Security (Optional): Change LogWritter.authString with a random string and write the same value to SimpleAS3LoggerServer.php's first if condition.
5. Possible extensions (for your project):
 
	5.1  Add to the LoggingLevel class for more logging levels. 

   	5.2  For each new logging level create a someLevelProcessingLogger class that extends ProcessingLogger abstract class.
   
	5.3  Write more functions to LogWritter class for writing to more output areas like email, file, etc.
   
 	5.4  In the `ProcessingLogger` class's `log(...)` function : change `...else if (next != null)...` to `...if (next != null)...` if you want all the higer level to process the same log, i.e., logging to Trace will log to all the upper levels.
	

## Contribute to this project
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Contribute and Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Recognition 
1. Faisal Rahman : the original author of the project.
2. Faisal Rahman, Gabriel Bucknall : contributors to this project.
3. Wikipedia : concept of the Chain of responsibility pattern. Link: http://en.wikipedia.org/wiki/Chain-of-responsibility_pattern
4. Gabriel Bucknall : singleton implementation in as3. Link: http://blog.pixelbreaker.com/actionscript-3-0/as30-better-singletons
5. Java Logging API.


## License Terms

Copyright (C) 2011 Faisal Rahman

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
