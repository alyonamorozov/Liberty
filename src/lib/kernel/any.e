-- See the Copyright notice at the end of this file.
--
deferred class ANY
	--
	-- Project-wide universal properties. This class is an ancestor to all developer-written classes.
	-- By default all classes insert ANY.
	--
	-- Note: it is better to use a non modified ANY class.
	--

feature {}
	default_create is
			-- Default creation method. It is used when no creation
			-- method is specified if allowed. Note it may be renamed.
		do
		end

	frozen manifest_creation is
			-- This procedure is used as a placeholder in creation
			-- clauses. Instances of a class can be created using the
			-- "manifest generic" notation if and only if this class has
			-- `manifest_creation' in its creation clause.
			-- You should never call this procedure.
		do
			check
				False
			end
		end

feature {ANY} -- Access:
	generating_type: STRING is
			-- Name of current object's generating type (type of which it is a direct instance).
		external "built_in"
		end

	generator: STRING is
			-- Name of current object's generating class (base class of the type of which it is a direct
			-- instance).
		external "built_in"
		end

feature {ANY} -- Status report:
	frozen same_dynamic_type (other: like Current): BOOLEAN is
			-- Is the dynamic type of `Current' identical to the dynamic type of `other'?
		require
			other /= Void
		external "built_in"
		end

feature {ANY} -- Comparison:
	is_equal (other: like Current): BOOLEAN is
			-- Is `other' attached to an object considered equal to current object?
		require
			other /= Void
		external "built_in"
		ensure
			commutative: generating_type = other.generating_type implies Result = other.is_equal(Current)
		end

	frozen standard_is_equal (other: like Current): BOOLEAN is
			-- Are Current and `other' field-by-field identical?
		require
			other /= Void
		external "built_in"
		ensure
			Result implies same_dynamic_type(other)
			commutative: same_dynamic_type(other) implies Result = other.standard_is_equal(Current)
		end

feature {ANY} -- Deep Comparison:
	frozen is_deep_equal (other: like Current): BOOLEAN is
			-- Is `Current' recursively isomorph with `other' ?
		require
			other_not_void: other /= Void
		external "built_in"
		end

feature {ANY} -- Duplication:
	frozen twin: like Current is
			-- Return a new object with the dynamic type of Current.
			-- Before being returned, the new object is initialized using feature `copy' (Current is passed as the argument).
			-- Thus, when feature `copy' of ANY is not redefined, `twin' has exactly the same behavior as `standard_twin'.
		external "built_in"
		ensure
			equal: Result.is_equal(Current)
		end

	copy (other: like Current) is
			-- Update current object using fields of object attached
			-- to `other', so as to yield equal objects.
			-- Note: you can't copy object from a different dynamic type.
		require
			same_dynamic_type(other)
		external "built_in"
		ensure
			is_equal(other)
		end

	frozen standard_twin: like Current is
			-- Return a new object with the dynamic type of Current.
			-- Before being returned, the new object is initialized using
			-- feature `standard_copy' (Current is passed as the argument).
		external "built_in"
		end

	frozen standard_copy (other: like Current) is
			-- Copy every field of `other' onto corresponding field of
			-- current object.
		require
			other_not_void: other /= Void
		external "built_in"
		ensure
			standard_is_equal(other)
		end

feature {ANY} -- Deep Duplication:
	frozen deep_twin: like Current is
			-- Return a new object with the dynamic type of Current.
			-- The new object structure is recursively duplicated from the one
			-- attached to `Current'.
		external "built_in"
		end

feature {ANY} -- Basic operations:
	frozen default: like Current is
			-- Default value of entities declared with the `Current' type.
			-- Hence, the `Result' is Void for all reference types and, as another
			-- example, the `Result' is 0 for an INTEGER expression.
		do
		end

	is_default: BOOLEAN is
			-- Is the `Current' object in the `default' state?
			-- For example, when this feature is applied on an INTEGER, the
			-- `Result' is True only when the INTEGER is 0.  If not redefined, the
			-- `Result' is always False for a reference expression. Actually, this
			-- `is_default' predicate may be useful for user-defined expanded
			-- objects stored in collection (see `all_default' of class
			-- COLLECTION).
		do
			Result := Current = default
		end

feature {}
	frozen default_pointer: POINTER is
			-- Default value of type POINTER (avoid the need to write p.default
			-- for some `p' of type POINTER).
		do
		ensure
			Result = Result.default
		end

	default_rescue is
			-- Handle exception if no Rescue clause. (Default: do nothing.)
		do
		end

feature {} -- Input and Output:
	io: STD_INPUT_OUTPUT is
			-- Handle to standard file setup.
			-- To use the standard input/output file.
			-- Has type STD_FILES in ELKS 95.
		once
			create Result.make
		ensure
			Result /= Void
		end

	std_input: STD_INPUT is
			-- The standard input stream
		once
			create Result.make
		ensure
			Result /= Void
		end

	std_output: STD_OUTPUT is
			-- The standard output stream
		once
			create Result.make
		ensure
			Result /= Void
		end

	std_error: STD_ERROR is
			-- The standard error stream
		once
			create Result.make
		ensure
			Result /= Void
		end

feature {} -- Object Printing:
	frozen print (some: STRING) is
			-- When some is Void, output "Void" on `std_output', otherwise, output `some' on `std_output'.
			-- Note: still here for historal reasons.
		do
			if some = Void then
				std_output.put_string(once "Void")
			else
				std_output.put_string(some)
			end
		end

feature {ANY} -- Object Printing:
	print_on (file: OUTPUT_STREAM) is
			-- Default printing of current object on a `file'.
			-- One may redefine `fill_tagged_out_memory' or `out_in_tagged_out_memory' to adapt the behavior of
			-- `print_on'.
			--
		require
			file.is_connected
		do
			tagged_out_memory.clear_count
			out_in_tagged_out_memory
			file.put_string(tagged_out_memory)
		end

	frozen tagged_out: STRING is
			-- New string containing printable representation of current
			-- object, each field preceded by its attribute name, a
			-- colon and a space.
		do
			tagged_out_memory.clear_count
			fill_tagged_out_memory
			Result := tagged_out_memory.twin
		end

	out: STRING is
			-- Create a new string containing terse printable
			-- representation of current object.
		do
			tagged_out_memory.clear_count
			out_in_tagged_out_memory
			Result := tagged_out_memory.twin
		end

	out_in_tagged_out_memory is
			-- Append terse printable represention of current object in `tagged_out_memory'.
		local
			like_current: like Current
		do
			tagged_out_memory.append(generating_type)
			if like_current = Void then
				-- Not an expanded type:
				tagged_out_memory.extend('#')
				to_pointer.append_in(tagged_out_memory)
			end
			tagged_out_memory.extend('[')
			fill_tagged_out_memory
			tagged_out_memory.extend(']')
		ensure
			not_cleared: tagged_out_memory.count >= old tagged_out_memory.count
			append_only: (old tagged_out_memory.twin).is_equal(tagged_out_memory.substring(1, old tagged_out_memory.count))
		end

	frozen tagged_out_memory: STRING is
		once
			create Result.make(1024)
		end

	fill_tagged_out_memory is
			-- Append a viewable information in `tagged_out_memory' in
			-- order to affect the behavior of `out', `tagged_out', etc.
		do
			-- Should be an external "built_in" to provide a default
			-- view of Current contents (not yet implemented).
		end

feature {} -- Various useful tools:
	frozen crash is
			-- Print Run Time Stack and then exit with `exit_failure_code'.
		do
			print_run_time_stack
			sedb_breakpoint
			die_with_code(exit_failure_code)
		end

	frozen trace_switch (flag: BOOLEAN) is
			-- May be used in combination with option "-sedb" of command
			-- `compile_to_c' (see compile_to_c documentation for details).
		external "built_in"
		end

	frozen sedb_breakpoint is
			-- May be used in combination with option "-sedb" of command
			-- `compile_to_c' to set a breakpoint for sedb, the SmartEiffel debugger.
		external "built_in"
		end

	frozen die_with_code (code: INTEGER) is
			-- Terminate execution with exit status code `code'.
			-- Do not print any message.
			-- Note: you can use predefined `exit_success_code' or
			-- `exit_failure_code' as well as another code you need.
		external "built_in"
		end

	exit_success_code: INTEGER is 0

	exit_failure_code: INTEGER is 1

	not_yet_implemented is
		do
			sedb_breakpoint
			std_error.put_string("%
            %Some feature is not yet implemented (i.e. feature `not_yet_implemented' of%N%
            %class ANY has been called somewhere). Just run this code under the debugger%N%
            %to know the `not_yet_implemented' caller. If this is a feature of the%N%
            %SmartEiffel library, you may consider to post your implementation on the%N%
            %SmartEiffel mailing list.%N%
            %                                    e-mail: SmartEiffel@loria.fr%N%
            %                              Happy debug and thanks in advance.%N%
            %                                     http://SmartEiffel.loria.fr%N%
            %                                           The SmartEiffel team.%N%
%%N%
            %The error occured in the type ")
			std_error.put_string(generating_type)
			std_error.put_string(".%N%N")
			crash
		end

feature {ANY} -- The Guru section:
	to_pointer: POINTER is
			-- The memory address of `Current'. 
			-- This routine can be used only if `Current' is not expanded or 
			-- if `Current' is some NATIVE_ARRAY or some FIXED_ARRAY.
			-- Actually, this routine does nothing: the value of `Current' which is 
			-- a memory address is returned.
			-- The compiler will emit an error message if you try to use `to_pointer' 
			-- on some expanded type which is not a NATIVE_ARRAY nor FIXED_ARRAY.
		external "built_in"
		end

	frozen is_basic_expanded_type: BOOLEAN is
			-- The `Result' is True if the target static type is one of the following
			-- basic types: BOOLEAN, CHARACTER, INTEGER, REAL or POINTER.
			--
			-- Warning: this feature will be obsolete in release 2.4.
		obsolete "Since november 2007 this feature is obsolete (and will be removed soon)."
		external "built_in"
		end

	frozen object_size: INTEGER is
			-- Gives the size of the current object at first level
			-- only (pointed-to sub-object are not concerned).
			-- The result is given in number of CHARACTER.
		external "built_in"
		end

feature {} -- The C Guru section:
	frozen c_inline_h (c_code: STRING) is
			-- Target must be Current and `c_code' must be a manifest
			-- string. Write `c_code' in the heading C file.
		external "built_in"
		end

	frozen c_inline_c (c_code: STRING) is
			-- Target must be Current and `c_code' must be a manifest
			-- string. Write `c_code' in the stream at current position.
		external "built_in"
		end

feature {} -- Implementation of ANY (do not use directly):
	print_run_time_stack is
			-- Prints the run time stack.
			-- The result depends on compilation mode.
			-- Usually, in mode -boost, no information is printed.
		external "built_in"
		end

	se_atexit is
			-- Called automatically at exit when `std_output' is used.
			-- (Do not call explicitely. Implementation purpose.)
		do
			std_output.flush
		end

feature {INTERNALS_HANDLER}
	frozen to_internals: INTERNALS is
			-- The effect of this built_in is
			--	create {TYPED_INTERNALS[like Current]} Result.for_object(Current)
		external "built_in"
		end

feature {TYPED_INTERNALS}
	internals_can_be_retrieved is
			-- Called when the function `set_can_be_retrieved' is called on a TYPED_INTERNALS having built this
			-- object `from_blank'.
			-- Note that the invariant must hold at feature entry.
			-- By default, does nothing.
		do
		end

end -- class ANY
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