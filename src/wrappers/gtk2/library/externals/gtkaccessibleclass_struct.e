-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GTKACCESSIBLECLASS_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GTK_TYPES
feature {} -- Low-level setters

	gtkaccessibleclass_struct_set_connect_widget_destroyed (a_structure: POINTER; a_value: POINTER) is
			-- Setter for connect_widget_destroyed field of GTKACCESSIBLECLASS_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkaccessibleclass_struct_set_connect_widget_destroyed"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field parent_class.
	gtkaccessibleclass_struct_get_connect_widget_destroyed (a_structure: POINTER): POINTER is
			-- Query for connect_widget_destroyed field of GTKACCESSIBLECLASS_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkaccessibleclass_struct_get_connect_widget_destroyed"
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
			feature_name: "sizeof__GtkAccessibleClass"
		}"
		end

end -- class GTKACCESSIBLECLASS_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

