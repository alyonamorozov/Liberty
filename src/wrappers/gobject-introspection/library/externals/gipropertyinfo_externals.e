-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GIPROPERTYINFO_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	g_property_info_get_flags (an_info: POINTER): INTEGER
 		-- g_property_info_get_flags
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_property_info_get_flags"
		}"
		end

	g_property_info_get_ownership_transfer (an_info: POINTER): INTEGER
 		-- g_property_info_get_ownership_transfer
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_property_info_get_ownership_transfer"
		}"
		end

	g_property_info_get_type (an_info: POINTER): POINTER
 		-- g_property_info_get_type
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "g_property_info_get_type"
		}"
		end


end -- class GIPROPERTYINFO_EXTERNALS
