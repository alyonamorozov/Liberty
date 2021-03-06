-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTKTEXTDIRECTION_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = gtk_text_dir_ltr_low_level)  or else
				(a_value = gtk_text_dir_none_low_level)  or else
				(a_value = gtk_text_dir_rtl_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_gtk_text_dir_ltr is
		do
			value := gtk_text_dir_ltr_low_level
		end

	set_gtk_text_dir_none is
		do
			value := gtk_text_dir_none_low_level
		end

	set_gtk_text_dir_rtl is
		do
			value := gtk_text_dir_rtl_low_level
		end

feature {ANY} -- Queries
	is_gtk_text_dir_ltr: BOOLEAN is
		do
			Result := (value=gtk_text_dir_ltr_low_level)
		end

	is_gtk_text_dir_none: BOOLEAN is
		do
			Result := (value=gtk_text_dir_none_low_level)
		end

	is_gtk_text_dir_rtl: BOOLEAN is
		do
			Result := (value=gtk_text_dir_rtl_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gtk_text_dir_ltr_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_TEXT_DIR_LTR"
 			}"
 		end

	gtk_text_dir_none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_TEXT_DIR_NONE"
 			}"
 		end

	gtk_text_dir_rtl_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_TEXT_DIR_RTL"
 			}"
 		end


end -- class GTKTEXTDIRECTION_ENUM
