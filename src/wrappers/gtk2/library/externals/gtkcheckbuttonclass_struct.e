-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GTKCHECKBUTTONCLASS_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GTK_TYPES
feature {} -- Low-level setters

	gtkcheckbuttonclass_struct_set_draw_indicator (a_structure: POINTER; a_value: POINTER) is
			-- Setter for draw_indicator field of GTKCHECKBUTTONCLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkcheckbuttonclass_struct_set_draw_indicator"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field parent_class.
	gtkcheckbuttonclass_struct_get_draw_indicator (a_structure: POINTER): POINTER is
			-- Query for draw_indicator field of GTKCHECKBUTTONCLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkcheckbuttonclass_struct_get_draw_indicator"
		}"
		end

	-- Unwrappable field _gtk_reserved1.
	-- Unwrappable field _gtk_reserved2.
	-- Unwrappable field _gtk_reserved3.
	-- Unwrappable field _gtk_reserved4.
feature {ANY} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GtkCheckButtonClass"
		}"
		end

end -- class GTKCHECKBUTTONCLASS_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

