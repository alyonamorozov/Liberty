-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class FPOS_T_STRUCT

inherit ANY undefine is_equal, copy end

insert STANDARD_C_LIBRARY_TYPES
feature {} -- Low-level setters

feature {} -- Low-level queries

	-- Unwrappable field __pos.
	-- Unwrappable field __state.
feature -- Structure size
	struct_size: INTEGER is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__G_fpos_t"
		}"
		end

end -- class FPOS_T_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

