-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDATA_STREAM_NEWLINE_TYPE_ENUM

insert ENUM

creation default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = g_data_stream_newline_type_any_low_level)  or else
				(a_value = g_data_stream_newline_type_cr_low_level)  or else
				(a_value = g_data_stream_newline_type_cr_lf_low_level)  or else
				(a_value = g_data_stream_newline_type_lf_low_level) )
		end

feature -- Setters
	default_create,
	set_g_data_stream_newline_type_any is
		do
			value := g_data_stream_newline_type_any_low_level
		end

	set_g_data_stream_newline_type_cr is
		do
			value := g_data_stream_newline_type_cr_low_level
		end

	set_g_data_stream_newline_type_cr_lf is
		do
			value := g_data_stream_newline_type_cr_lf_low_level
		end

	set_g_data_stream_newline_type_lf is
		do
			value := g_data_stream_newline_type_lf_low_level
		end

feature -- Queries
	is_g_data_stream_newline_type_any: BOOLEAN is
		do
			Result := (value=g_data_stream_newline_type_any_low_level)
		end

	is_g_data_stream_newline_type_cr: BOOLEAN is
		do
			Result := (value=g_data_stream_newline_type_cr_low_level)
		end

	is_g_data_stream_newline_type_cr_lf: BOOLEAN is
		do
			Result := (value=g_data_stream_newline_type_cr_lf_low_level)
		end

	is_g_data_stream_newline_type_lf: BOOLEAN is
		do
			Result := (value=g_data_stream_newline_type_lf_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_data_stream_newline_type_any_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DATA_STREAM_NEWLINE_TYPE_ANY"
 			}"
 		end

	g_data_stream_newline_type_cr_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DATA_STREAM_NEWLINE_TYPE_CR"
 			}"
 		end

	g_data_stream_newline_type_cr_lf_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DATA_STREAM_NEWLINE_TYPE_CR_LF"
 			}"
 		end

	g_data_stream_newline_type_lf_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DATA_STREAM_NEWLINE_TYPE_LF"
 			}"
 		end


end -- class GDATA_STREAM_NEWLINE_TYPE_ENUM
