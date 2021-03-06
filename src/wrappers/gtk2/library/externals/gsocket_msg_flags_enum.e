-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GSOCKET_MSG_FLAGS_ENUM

insert ENUM

creation default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = g_socket_msg_dontroute_low_level)  or else
				(a_value = g_socket_msg_none_low_level)  or else
				(a_value = g_socket_msg_oob_low_level)  or else
				(a_value = g_socket_msg_peek_low_level) )
		end

feature -- Setters
	default_create,
	set_g_socket_msg_dontroute is
		do
			value := g_socket_msg_dontroute_low_level
		end

	set_g_socket_msg_none is
		do
			value := g_socket_msg_none_low_level
		end

	set_g_socket_msg_oob is
		do
			value := g_socket_msg_oob_low_level
		end

	set_g_socket_msg_peek is
		do
			value := g_socket_msg_peek_low_level
		end

feature -- Queries
	is_g_socket_msg_dontroute: BOOLEAN is
		do
			Result := (value=g_socket_msg_dontroute_low_level)
		end

	is_g_socket_msg_none: BOOLEAN is
		do
			Result := (value=g_socket_msg_none_low_level)
		end

	is_g_socket_msg_oob: BOOLEAN is
		do
			Result := (value=g_socket_msg_oob_low_level)
		end

	is_g_socket_msg_peek: BOOLEAN is
		do
			Result := (value=g_socket_msg_peek_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_socket_msg_dontroute_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_MSG_DONTROUTE"
 			}"
 		end

	g_socket_msg_none_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_MSG_NONE"
 			}"
 		end

	g_socket_msg_oob_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_MSG_OOB"
 			}"
 		end

	g_socket_msg_peek_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_SOCKET_MSG_PEEK"
 			}"
 		end


end -- class GSOCKET_MSG_FLAGS_ENUM
