-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDKWINDOWCLASS_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = gdk_input_only_low_level)  or else
				(a_value = gdk_input_output_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_gdk_input_only is
		do
			value := gdk_input_only_low_level
		end

	set_gdk_input_output is
		do
			value := gdk_input_output_low_level
		end

feature {ANY} -- Queries
	is_gdk_input_only: BOOLEAN is
		do
			Result := (value=gdk_input_only_low_level)
		end

	is_gdk_input_output: BOOLEAN is
		do
			Result := (value=gdk_input_output_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gdk_input_only_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_INPUT_ONLY"
 			}"
 		end

	gdk_input_output_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_INPUT_OUTPUT"
 			}"
 		end


end -- class GDKWINDOWCLASS_ENUM
