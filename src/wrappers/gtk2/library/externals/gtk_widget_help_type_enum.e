-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTK_WIDGET_HELP_TYPE_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

creation default_create
feature -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := ((a_value = tooltip_low_level)  or else
				(a_value = whats_this_low_level) )
		end

feature -- Setters
	default_create,
	set_tooltip is
		do
			value := tooltip_low_level
		end

	set_whats_this is
		do
			value := whats_this_low_level
		end

feature -- Queries
	tooltip: BOOLEAN is
		do
			Result := (value=tooltip_low_level)
		end

	whats_this: BOOLEAN is
		do
			Result := (value=whats_this_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	tooltip_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_WIDGET_HELP_TOOLTIP"
 			}"
 		end

	whats_this_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_WIDGET_HELP_WHATS_THIS"
 			}"
 		end


end -- class GTK_WIDGET_HELP_TYPE_ENUM