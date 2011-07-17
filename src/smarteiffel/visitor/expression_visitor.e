-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
deferred class EXPRESSION_VISITOR

inherit
	PRECURSOR_EXPRESSION_VISITOR
	ASSERTION_VISITOR
	OPEN_OPERAND_VISITOR
	BUILT_IN_EQ_NEQ_VISITOR
	AGENT_EXPRESSION_VISITOR
	CLOSED_OPERAND_VISITOR
	WRITABLE_ATTRIBUTE_NAME_VISITOR
	CREATE_WRITABLE_VISITOR
	GENERATOR_GENERATING_TYPE_VISITOR
	CREATE_EXPRESSION_VISITOR
	RESULT_VISITOR
	ASSIGNMENT_TEST_VISITOR
	MANIFEST_GENERIC_VISITOR
	OLD_MANIFEST_ARRAY_VISITOR
	LOCAL_ARGUMENT2_VISITOR
	EXPRESSION_WITH_COMMENT_VISITOR
	FUNCTION_CALL_VISITOR
	FAKE_TUPLE_VISITOR
	E_OLD_VISITOR
	ABSTRACT_CURRENT_VISITOR
	IMPLICIT_CAST_VISITOR
	AGENT_CREATION_VISITOR
	MANIFEST_TUPLE_VISITOR
	NON_WRITTEN_EXPRESSION_VISITOR
	ADDRESS_OF_VISITOR
	MANIFEST_EXPRESSION_VISITOR
	FAKE_TARGET_VISITOR
	LOOP_VARIANT_VISITOR
	FAKE_ARGUMENT_VISITOR

end -- class EXPRESSION_VISITOR
--
-- ------------------------------------------------------------------------------------------------------------------------------
-- Copyright notice below. Please read.
--
-- SmartEiffel is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License,
-- as published by the Free Software Foundation; either version 2, or (at your option) any later version.
-- SmartEiffel is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY; without even the implied warranty
-- of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have
-- received a copy of the GNU General Public License along with SmartEiffel; see the file COPYING. If not, write to the Free
-- Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
--
-- Copyright(C) 1994-2002: INRIA - LORIA (INRIA Lorraine) - ESIAL U.H.P.       - University of Nancy 1 - FRANCE
-- Copyright(C) 2003-2006: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN
--
-- http://SmartEiffel.loria.fr - SmartEiffel@loria.fr
-- ------------------------------------------------------------------------------------------------------------------------------