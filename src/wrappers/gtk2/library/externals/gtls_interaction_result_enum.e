-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTLS_INTERACTION_RESULT_ENUM

insert ENUM

creation default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = g_tls_interaction_failed_low_level)  or else
				(a_value = g_tls_interaction_handled_low_level)  or else
				(a_value = g_tls_interaction_unhandled_low_level) )
		end

feature -- Setters
	default_create,
	set_g_tls_interaction_failed is
		do
			value := g_tls_interaction_failed_low_level
		end

	set_g_tls_interaction_handled is
		do
			value := g_tls_interaction_handled_low_level
		end

	set_g_tls_interaction_unhandled is
		do
			value := g_tls_interaction_unhandled_low_level
		end

feature -- Queries
	is_g_tls_interaction_failed: BOOLEAN is
		do
			Result := (value=g_tls_interaction_failed_low_level)
		end

	is_g_tls_interaction_handled: BOOLEAN is
		do
			Result := (value=g_tls_interaction_handled_low_level)
		end

	is_g_tls_interaction_unhandled: BOOLEAN is
		do
			Result := (value=g_tls_interaction_unhandled_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_tls_interaction_failed_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_INTERACTION_FAILED"
 			}"
 		end

	g_tls_interaction_handled_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_INTERACTION_HANDLED"
 			}"
 		end

	g_tls_interaction_unhandled_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_TLS_INTERACTION_UNHANDLED"
 			}"
 		end


end -- class GTLS_INTERACTION_RESULT_ENUM
