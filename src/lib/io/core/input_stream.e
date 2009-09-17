-- See the Copyright notice at the end of this file.
--
deferred class INPUT_STREAM
	--
	-- An input stream is a flow of characters that can be read from some source (be it an Eiffel object or an
	-- external object)
	--
	-- Input stream usage is available in tutorial/io and SmartEiffel FAQ.
	--

inherit
	STREAM

insert
	INPUT_STREAM_TOOLS
	FILTERABLE
		redefine filter
		end

feature {ANY}
	read_character is
		do
			filtered_read_character
		ensure then
			is_connected
		end

	read_line_in (buffer: STRING) is
		do
			filtered_read_line_in(buffer)
		end

	read_available_in (buffer: STRING; limit: INTEGER) is
		do
			filtered_read_available_in(buffer, limit)
		end

	unread_character is
		do
			filtered_unread_character
		ensure
			not end_of_input
		end

	last_character: CHARACTER is
		do
			Result := filtered_last_character
		ensure
			is_connected
			not end_of_input
		end

	detach is
		do
			if filter /= Void then
				filter.do_detach
				filter := Void
			end
		end

feature {FILTER_INPUT_STREAM}
	filtered_read_character is
		require
			is_connected
			can_read_character
		deferred
		end

	filtered_unread_character is
		require
			is_connected
			can_unread_character
		deferred
		end

	filtered_last_character: CHARACTER is
		require
			is_connected
			valid_last_character
		deferred
		end

	filtered_read_available_in (buffer: STRING; limit: INTEGER) is
		require
			is_connected
			buffer /= Void
		local
			i: INTEGER
		do
			-- Default implementation
			if can_read_character then
				from
					i := 1
					filtered_read_character
				until
					end_of_input or else not can_read_character or else i > limit
				loop
					buffer.extend(filtered_last_character)
					filtered_read_character
					i := i + 1
				end
				if i > limit then
					filtered_unread_character
				end
			end
		end

	filtered_read_line_in (buffer: STRING) is
		require
			is_connected
			buffer /= Void
		do
			-- Default implementation
			if can_read_character then
				from
					filtered_read_character
				until
					end_of_input or else not can_read_character or else filtered_last_character = '%N'
				loop
					inspect
						filtered_last_character
					when '%R' then
						if can_read_character then
							filtered_read_character
							if filtered_last_character /= '%N' then
								buffer.extend('%R')
								buffer.extend(filtered_last_character)
								filtered_read_character
							end
						end
					when '%N' then
					else
						buffer.extend(filtered_last_character)
						filtered_read_character
					end
				end
			end
		end

feature {FILTER}
	filter: FILTER_INPUT_STREAM

feature {ANY}
	event_can_read: EVENT_DESCRIPTOR is
		do
			Result := can_read
			if Result = Void then
				create can_read.make(Current)
				Result := can_read
			end
		end

feature {}
	can_read: CAN_READ_DATA_FROM_STREAM

	new_url: URL is
		do
			create Result.from_stream(Current, True, False)
		end

end -- class INPUT_STREAM
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