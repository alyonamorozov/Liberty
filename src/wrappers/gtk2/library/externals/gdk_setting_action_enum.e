-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDK_SETTING_ACTION_ENUM

insert ENUM

creation default_create
feature -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = gdk_setting_action_changed_low_level)  or else
				(a_value = gdk_setting_action_deleted_low_level)  or else
				(a_value = gdk_setting_action_new_low_level) )
		end

feature -- Setters
	default_create,
	set_gdk_setting_action_changed is
		do
			value := gdk_setting_action_changed_low_level
		end

	set_gdk_setting_action_deleted is
		do
			value := gdk_setting_action_deleted_low_level
		end

	set_gdk_setting_action_new is
		do
			value := gdk_setting_action_new_low_level
		end

feature -- Queries
	is_gdk_setting_action_changed: BOOLEAN is
		do
			Result := (value=gdk_setting_action_changed_low_level)
		end

	is_gdk_setting_action_deleted: BOOLEAN is
		do
			Result := (value=gdk_setting_action_deleted_low_level)
		end

	is_gdk_setting_action_new: BOOLEAN is
		do
			Result := (value=gdk_setting_action_new_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gdk_setting_action_changed_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_SETTING_ACTION_CHANGED"
 			}"
 		end

	gdk_setting_action_deleted_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_SETTING_ACTION_DELETED"
 			}"
 		end

	gdk_setting_action_new_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_SETTING_ACTION_NEW"
 			}"
 		end


end -- class GDK_SETTING_ACTION_ENUM
