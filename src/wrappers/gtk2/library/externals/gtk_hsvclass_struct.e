-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GTK_HSVCLASS_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GTK_TYPES
feature {} -- Low-level setters

	gtk_hsvclass_struct_set_changed (a_structure: POINTER; a_value: POINTER) is
			-- Setter for changed field of GTK_HSVCLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_hsvclass_struct_set_changed"
		}"
		end

	gtk_hsvclass_struct_set_move (a_structure: POINTER; a_value: POINTER) is
			-- Setter for move field of GTK_HSVCLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_hsvclass_struct_set_move"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field parent_class.
	gtk_hsvclass_struct_get_changed (a_structure: POINTER): POINTER is
			-- Query for changed field of GTK_HSVCLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_hsvclass_struct_get_changed"
		}"
		end

	gtk_hsvclass_struct_get_move (a_structure: POINTER): POINTER is
			-- Query for move field of GTK_HSVCLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_hsvclass_struct_get_move"
		}"
		end

	-- Unwrappable field _gtk_reserved1.
	-- Unwrappable field _gtk_reserved2.
	-- Unwrappable field _gtk_reserved3.
	-- Unwrappable field _gtk_reserved4.
feature -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GtkHSVClass"
		}"
		end

end -- class GTK_HSVCLASS_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

