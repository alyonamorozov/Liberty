-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GTKBINDINGSET_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GTK_TYPES
feature {} -- Low-level setters

	gtkbindingset_struct_set_set_name (a_structure: POINTER; a_value: POINTER) is
			-- Setter for set_name field of GTKBINDINGSET_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_set_set_name"
		}"
		end

	gtkbindingset_struct_set_priority (a_structure: POINTER; a_value: INTEGER_32) is
			-- Setter for priority field of GTKBINDINGSET_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_set_priority"
		}"
		end

	gtkbindingset_struct_set_widget_path_pspecs (a_structure: POINTER; a_value: POINTER) is
			-- Setter for widget_path_pspecs field of GTKBINDINGSET_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_set_widget_path_pspecs"
		}"
		end

	gtkbindingset_struct_set_widget_class_pspecs (a_structure: POINTER; a_value: POINTER) is
			-- Setter for widget_class_pspecs field of GTKBINDINGSET_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_set_widget_class_pspecs"
		}"
		end

	gtkbindingset_struct_set_class_branch_pspecs (a_structure: POINTER; a_value: POINTER) is
			-- Setter for class_branch_pspecs field of GTKBINDINGSET_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_set_class_branch_pspecs"
		}"
		end

	gtkbindingset_struct_set_entries (a_structure: POINTER; a_value: POINTER) is
			-- Setter for entries field of GTKBINDINGSET_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_set_entries"
		}"
		end

	gtkbindingset_struct_set_current (a_structure: POINTER; a_value: POINTER) is
			-- Setter for current field of GTKBINDINGSET_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_set_current"
		}"
		end

	gtkbindingset_struct_set_parsed (a_structure: POINTER; a_value: NATURAL_32) is
			-- Setter for parsed field of GTKBINDINGSET_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_set_parsed"
		}"
		end

feature {} -- Low-level queries

	gtkbindingset_struct_get_set_name (a_structure: POINTER): POINTER is
			-- Query for set_name field of GTKBINDINGSET_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_get_set_name"
		}"
		end

	gtkbindingset_struct_get_priority (a_structure: POINTER): INTEGER_32 is
			-- Query for priority field of GTKBINDINGSET_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_get_priority"
		}"
		end

	gtkbindingset_struct_get_widget_path_pspecs (a_structure: POINTER): POINTER is
			-- Query for widget_path_pspecs field of GTKBINDINGSET_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_get_widget_path_pspecs"
		}"
		end

	gtkbindingset_struct_get_widget_class_pspecs (a_structure: POINTER): POINTER is
			-- Query for widget_class_pspecs field of GTKBINDINGSET_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_get_widget_class_pspecs"
		}"
		end

	gtkbindingset_struct_get_class_branch_pspecs (a_structure: POINTER): POINTER is
			-- Query for class_branch_pspecs field of GTKBINDINGSET_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_get_class_branch_pspecs"
		}"
		end

	gtkbindingset_struct_get_entries (a_structure: POINTER): POINTER is
			-- Query for entries field of GTKBINDINGSET_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_get_entries"
		}"
		end

	gtkbindingset_struct_get_current (a_structure: POINTER): POINTER is
			-- Query for current field of GTKBINDINGSET_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_get_current"
		}"
		end

	gtkbindingset_struct_get_parsed (a_structure: POINTER): NATURAL_32 is
			-- Query for parsed field of GTKBINDINGSET_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtkbindingset_struct_get_parsed"
		}"
		end

feature {ANY} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GtkBindingSet"
		}"
		end

end -- class GTKBINDINGSET_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

