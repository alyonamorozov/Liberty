-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GFILE_ATTRIBUTE_STATUS_ENUM

insert ENUM

creation default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = g_file_attribute_status_error_setting_low_level)  or else
				(a_value = g_file_attribute_status_set_low_level)  or else
				(a_value = g_file_attribute_status_unset_low_level) )
		end

feature -- Setters
	default_create,
	set_g_file_attribute_status_error_setting is
		do
			value := g_file_attribute_status_error_setting_low_level
		end

	set_g_file_attribute_status_set is
		do
			value := g_file_attribute_status_set_low_level
		end

	set_g_file_attribute_status_unset is
		do
			value := g_file_attribute_status_unset_low_level
		end

feature -- Queries
	is_g_file_attribute_status_error_setting: BOOLEAN is
		do
			Result := (value=g_file_attribute_status_error_setting_low_level)
		end

	is_g_file_attribute_status_set: BOOLEAN is
		do
			Result := (value=g_file_attribute_status_set_low_level)
		end

	is_g_file_attribute_status_unset: BOOLEAN is
		do
			Result := (value=g_file_attribute_status_unset_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_file_attribute_status_error_setting_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING"
 			}"
 		end

	g_file_attribute_status_set_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_STATUS_SET"
 			}"
 		end

	g_file_attribute_status_unset_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_FILE_ATTRIBUTE_STATUS_UNSET"
 			}"
 		end


end -- class GFILE_ATTRIBUTE_STATUS_ENUM
