-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GOUTPUT_STREAM_SPLICE_FLAGS_ENUM

insert ENUM

creation default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = g_output_stream_splice_close_source_low_level)  or else
				(a_value = g_output_stream_splice_close_target_low_level)  or else
				(a_value = g_output_stream_splice_none_low_level) )
		end

feature -- Setters
	default_create,
	set_g_output_stream_splice_close_source is
		do
			value := g_output_stream_splice_close_source_low_level
		end

	set_g_output_stream_splice_close_target is
		do
			value := g_output_stream_splice_close_target_low_level
		end

	set_g_output_stream_splice_none is
		do
			value := g_output_stream_splice_none_low_level
		end

feature -- Queries
	is_g_output_stream_splice_close_source: BOOLEAN is
		do
			Result := (value=g_output_stream_splice_close_source_low_level)
		end

	is_g_output_stream_splice_close_target: BOOLEAN is
		do
			Result := (value=g_output_stream_splice_close_target_low_level)
		end

	is_g_output_stream_splice_none: BOOLEAN is
		do
			Result := (value=g_output_stream_splice_none_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_output_stream_splice_close_source_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_OUTPUT_STREAM_SPLICE_CLOSE_SOURCE"
 			}"
 		end

	g_output_stream_splice_close_target_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_OUTPUT_STREAM_SPLICE_CLOSE_TARGET"
 			}"
 		end

	g_output_stream_splice_none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_OUTPUT_STREAM_SPLICE_NONE"
 			}"
 		end


end -- class GOUTPUT_STREAM_SPLICE_FLAGS_ENUM
