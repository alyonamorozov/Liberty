-- This file have been created by eiffel-gcc-xml.
-- Any change will be lost by the next execution of the tool.
deferred class SQL_UPDATE_STATEMENT_STRUCT

inherit ANY undefine is_equal, copy end

feature {} -- Low-level setters
	low_level_set_table (a_structure: POINTER; a_value: POINTER) is
		external "C struct sql_update_statement set table use <libgda/libgda.h>"
		end

	low_level_set_set (a_structure: POINTER; a_value: POINTER) is
		external "C struct sql_update_statement set set use <libgda/libgda.h>"
		end

	low_level_set_where (a_structure: POINTER; a_value: POINTER) is
		external "C struct sql_update_statement set where use <libgda/libgda.h>"
		end

feature {} -- Low-level queries
	get_table (a_structure: POINTER): POINTER is
		external "C struct sql_update_statement get table use <libgda/libgda.h>"
		end

	get_set (a_structure: POINTER): POINTER is
		external "C struct sql_update_statement get set use <libgda/libgda.h>"
		end

	get_where (a_structure: POINTER): POINTER is
		external "C struct sql_update_statement get where use <libgda/libgda.h>"
		end

end
