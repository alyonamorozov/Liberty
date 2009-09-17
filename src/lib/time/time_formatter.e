-- See the Copyright notice at the end of this file.
--
deferred class TIME_FORMATTER
	--
	-- The polymophic format class for TIME.
	--

insert
	TIME_HANDLER
		redefine out_in_tagged_out_memory
		end

feature {ANY}
	time: TIME
			-- The corresponding information to display.

	set_time (t: TIME) is
		do
			time := t
		ensure
			time = t
		end

	short_mode: BOOLEAN
			-- Is the formatting mode set to the short (abbreviated) mode ?

	set_short_mode (value: BOOLEAN) is
		do
			short_mode := value
		ensure
			short_mode = value
		end

	day_in (buffer: STRING) is
			-- According to the current `short_mode', append in the `buffer'
			-- the name of the day.
		deferred
		end

	month_in (buffer: STRING) is
			-- According to the current `short_mode', append in the `buffer'
			-- the name of the month.
		deferred
		end

	frozen to_string: STRING is
		do
			to_string_buffer.clear_count
			append_in(to_string_buffer)
			Result := to_string_buffer.twin
		end

	append_in (buffer: STRING) is
		deferred
		end

	frozen out_in_tagged_out_memory is
		do
			append_in(tagged_out_memory)
		end

feature {}
	to_string_buffer: STRING is
		once
			create Result.make(128)
		end

end -- class TIME_FORMATTER
--
-- ------------------------------------------------------------------------------------------------------------
-- Copyright notice below. Please read.
--
-- This file is part of the SmartEiffel standard library.
-- Copyright(C) 1994-2002: INRIA - LORIA (INRIA Lorraine) - ESIAL U.H.P.       - University of Nancy 1 - FRANCE
-- Copyright(C) 2003-2006: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
-- documentation files (the "Software"), to deal in the Software without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
-- the Software, and to permit persons to whom the Software is furnished to do so, subject to the following
-- conditions:
--
-- The above copyright notice and this permission notice shall be included in all copies or substantial
-- portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
-- LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO
-- EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
-- AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
-- OR OTHER DEALINGS IN THE SOFTWARE.
--
-- http://SmartEiffel.loria.fr - SmartEiffel@loria.fr
-- ------------------------------------------------------------------------------------------------------------