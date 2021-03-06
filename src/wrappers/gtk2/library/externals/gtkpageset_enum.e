-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTKPAGESET_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = gtk_page_set_all_low_level)  or else
				(a_value = gtk_page_set_even_low_level)  or else
				(a_value = gtk_page_set_odd_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_gtk_page_set_all is
		do
			value := gtk_page_set_all_low_level
		end

	set_gtk_page_set_even is
		do
			value := gtk_page_set_even_low_level
		end

	set_gtk_page_set_odd is
		do
			value := gtk_page_set_odd_low_level
		end

feature {ANY} -- Queries
	is_gtk_page_set_all: BOOLEAN is
		do
			Result := (value=gtk_page_set_all_low_level)
		end

	is_gtk_page_set_even: BOOLEAN is
		do
			Result := (value=gtk_page_set_even_low_level)
		end

	is_gtk_page_set_odd: BOOLEAN is
		do
			Result := (value=gtk_page_set_odd_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gtk_page_set_all_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_PAGE_SET_ALL"
 			}"
 		end

	gtk_page_set_even_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_PAGE_SET_EVEN"
 			}"
 		end

	gtk_page_set_odd_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_PAGE_SET_ODD"
 			}"
 		end


end -- class GTKPAGESET_ENUM
