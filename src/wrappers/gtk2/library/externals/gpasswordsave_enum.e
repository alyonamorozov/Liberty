-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GPASSWORDSAVE_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = g_password_save_for_session_low_level)  or else
				(a_value = g_password_save_never_low_level)  or else
				(a_value = g_password_save_permanently_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_g_password_save_for_session is
		do
			value := g_password_save_for_session_low_level
		end

	set_g_password_save_never is
		do
			value := g_password_save_never_low_level
		end

	set_g_password_save_permanently is
		do
			value := g_password_save_permanently_low_level
		end

feature {ANY} -- Queries
	is_g_password_save_for_session: BOOLEAN is
		do
			Result := (value=g_password_save_for_session_low_level)
		end

	is_g_password_save_never: BOOLEAN is
		do
			Result := (value=g_password_save_never_low_level)
		end

	is_g_password_save_permanently: BOOLEAN is
		do
			Result := (value=g_password_save_permanently_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_password_save_for_session_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_PASSWORD_SAVE_FOR_SESSION"
 			}"
 		end

	g_password_save_never_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_PASSWORD_SAVE_NEVER"
 			}"
 		end

	g_password_save_permanently_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_PASSWORD_SAVE_PERMANENTLY"
 			}"
 		end


end -- class GPASSWORDSAVE_ENUM
