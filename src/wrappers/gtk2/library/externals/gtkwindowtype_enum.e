-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTKWINDOWTYPE_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = gtk_window_popup_low_level)  or else
				(a_value = gtk_window_toplevel_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_gtk_window_popup is
		do
			value := gtk_window_popup_low_level
		end

	set_gtk_window_toplevel is
		do
			value := gtk_window_toplevel_low_level
		end

feature {ANY} -- Queries
	is_gtk_window_popup: BOOLEAN is
		do
			Result := (value=gtk_window_popup_low_level)
		end

	is_gtk_window_toplevel: BOOLEAN is
		do
			Result := (value=gtk_window_toplevel_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gtk_window_popup_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_WINDOW_POPUP"
 			}"
 		end

	gtk_window_toplevel_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_WINDOW_TOPLEVEL"
 			}"
 		end


end -- class GTKWINDOWTYPE_ENUM
