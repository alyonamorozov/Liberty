-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_INTERP_TYPE_ENUM

insert ENUM

creation default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = gdk_interp_bilinear_low_level)  or else
				(a_value = gdk_interp_hyper_low_level)  or else
				(a_value = gdk_interp_nearest_low_level)  or else
				(a_value = gdk_interp_tiles_low_level) )
		end

feature -- Setters
	default_create,
	set_gdk_interp_bilinear is
		do
			value := gdk_interp_bilinear_low_level
		end

	set_gdk_interp_hyper is
		do
			value := gdk_interp_hyper_low_level
		end

	set_gdk_interp_nearest is
		do
			value := gdk_interp_nearest_low_level
		end

	set_gdk_interp_tiles is
		do
			value := gdk_interp_tiles_low_level
		end

feature -- Queries
	is_gdk_interp_bilinear: BOOLEAN is
		do
			Result := (value=gdk_interp_bilinear_low_level)
		end

	is_gdk_interp_hyper: BOOLEAN is
		do
			Result := (value=gdk_interp_hyper_low_level)
		end

	is_gdk_interp_nearest: BOOLEAN is
		do
			Result := (value=gdk_interp_nearest_low_level)
		end

	is_gdk_interp_tiles: BOOLEAN is
		do
			Result := (value=gdk_interp_tiles_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gdk_interp_bilinear_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_INTERP_BILINEAR"
 			}"
 		end

	gdk_interp_hyper_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_INTERP_HYPER"
 			}"
 		end

	gdk_interp_nearest_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_INTERP_NEAREST"
 			}"
 		end

	gdk_interp_tiles_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_INTERP_TILES"
 			}"
 		end


end -- class GDK_INTERP_TYPE_ENUM
