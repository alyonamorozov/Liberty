-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
expanded class USER_INTERFACE

feature {ANY}
   curses (app: UI_APPLICATION; register: PROCEDURE[TUPLE[JOB]]): UI_JOB is
         -- Create a new Curses user interface
      do
         create {CURSES_JOB} Result.connect(app, register)
      ensure
         Result /= Void
      end

   web (app: UI_APPLICATION; register: PROCEDURE[TUPLE[JOB]]): UI_JOB is
         -- Create a new Web user interface (actually a web server)
      do
         create {WEB_JOB} Result.connect(app, register)
      ensure
         Result /= Void
      end

   readline (app: UI_APPLICATION; register: PROCEDURE[TUPLE[JOB]]): UI_JOB is
         -- Create a new GNU Readline user interface
      do
         create {READLINE_JOB} Result.connect(app, register)
      ensure
         Result /= Void
      end

end -- class USER_INTERFACE
--
-- Copyright (c) 2012 Cyril ADRIAN <cyril.adrian@gmail.com>.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- THE SOFTWARE.
