-- See the Copyright notice at the end of this file.
--
class EXCEPTIONS
	--
	-- Facilities for adapting the exception handling mechanism.
	-- This class may be used as ancestor by classes needing its facilities.
	--

feature {ANY} -- Various exceptions codes:
	Check_instruction: INTEGER is 1
			-- Exception code for violated check.

	Class_invariant: INTEGER is 2
			-- Exception code for violated class invariant.

	Developer_exception: INTEGER is 3
			-- Exception code for developer exception.

	Incorrect_inspect_value: INTEGER is 4
			-- Exception code for inspect statement. This exception occurs when Void is 
			-- passed as the expression to inspect ("inspect on STRING only). 
			-- This exception also occurs when the inspected value selects no branch (when 
			-- the keyword "else" is not used, one "when" branch _must_ be selected).
			-- some value which is not one of the inspect constants, if there is no Else_part

	Loop_invariant: INTEGER is 5
			-- Exception code for violated loop invariant

	Loop_variant: INTEGER is 6
			-- Exception code for non-decreased loop variant

	No_more_memory: INTEGER is 7
			-- Exception code for failed memory allocation

	Postcondition: INTEGER is 8
			-- Exception code for violated postcondition.

	Precondition: INTEGER is 9
			-- Exception code for violated precondition.

	Routine_failure: INTEGER is 10
			-- Exception code for failed routine.

	Os_signal: INTEGER is 11
			-- Exception code for a signal received from the OS.

	Void_attached_to_expanded: INTEGER is 12
			-- Exception code for attachment of Void value
			-- to expanded entity.

	Void_call_target: INTEGER is 13
			-- Exception code for feature applied to Void reference

	System_level_type_error: INTEGER is 14
			-- Exception code for the system-level type error (this kind
			-- of error mostly arise whith covariant redefinition).

feature {ANY}
	developer_exception_name: STRING is
			-- Name of last developer-raised exception.
		require
			applicable: is_developer_exception
		do
			Result := developer_exception_name_memory.item
		end

	is_developer_exception: BOOLEAN is
			-- Is the last exception originally due to
			-- a developer exception?
		do
			Result := exception = Developer_exception
		end

	is_developer_exception_of_name (name: STRING): BOOLEAN is
			-- Is the last exception originally due to a developer
			-- exception of name `name'?
		do
			if is_developer_exception then
				Result := name.is_equal(developer_exception_name)
			end
		end

feature {ANY} -- Status report:
	assertion_violation: BOOLEAN is
			-- Is last exception originally due to a violated
			-- assertion or non-decreasing variant?
		do
			inspect
				exception
			when Check_instruction, Class_invariant, Loop_invariant, Loop_variant, Postcondition, Precondition then
				Result := True
			else
			end
		end

	exception: INTEGER is
			-- Code of last exception that occurred.
		external "built_in"
		end

	is_signal: BOOLEAN is
			-- Is last exception originally due to an external
			-- event (operating system signal) ?
		do
			Result := signal_number /= 0
		end

feature {ANY} -- Basic operations:
	die (code: INTEGER) is
			-- Terminate execution with exit status code,
			-- without triggering an exception.
		do
			die_with_code(code)
		end

	raise (name: STRING) is
			-- Raise a developer exception of name `name'.
		do
			developer_exception_name_memory.set_item(name)
			raise_exception(Developer_exception)
		end

feature {ANY} -- Non-Standard Extensions:
	signal_number: INTEGER is
			-- Signal Number received from OS.  Zero if exception
			-- is not an OS signal.
		external "built_in"
		end

	developer_exception_name_memory: REFERENCE[STRING] is
		once
			create Result
		end

	raise_exception (code: INTEGER) is
		external "built_in"
		end

end -- class EXCEPTIONS
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