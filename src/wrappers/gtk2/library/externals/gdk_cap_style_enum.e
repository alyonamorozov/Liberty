-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_CAP_STYLE_ENUM

insert ENUM

creation default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = gdk_cap_butt_low_level)  or else
				(a_value = gdk_cap_not_last_low_level)  or else
				(a_value = gdk_cap_projecting_low_level)  or else
				(a_value = gdk_cap_round_low_level) )
		end

feature -- Setters
	default_create,
	set_gdk_cap_butt is
		do
			value := gdk_cap_butt_low_level
		end

	set_gdk_cap_not_last is
		do
			value := gdk_cap_not_last_low_level
		end

	set_gdk_cap_projecting is
		do
			value := gdk_cap_projecting_low_level
		end

	set_gdk_cap_round is
		do
			value := gdk_cap_round_low_level
		end

feature -- Queries
	is_gdk_cap_butt: BOOLEAN is
		do
			Result := (value=gdk_cap_butt_low_level)
		end

	is_gdk_cap_not_last: BOOLEAN is
		do
			Result := (value=gdk_cap_not_last_low_level)
		end

	is_gdk_cap_projecting: BOOLEAN is
		do
			Result := (value=gdk_cap_projecting_low_level)
		end

	is_gdk_cap_round: BOOLEAN is
		do
			Result := (value=gdk_cap_round_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gdk_cap_butt_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CAP_BUTT"
 			}"
 		end

	gdk_cap_not_last_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CAP_NOT_LAST"
 			}"
 		end

	gdk_cap_projecting_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CAP_PROJECTING"
 			}"
 		end

	gdk_cap_round_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CAP_ROUND"
 			}"
 		end


end -- class GDK_CAP_STYLE_ENUM
