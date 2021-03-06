-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDKSUBWINDOWMODE_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = gdk_clip_by_children_low_level)  or else
				(a_value = gdk_include_inferiors_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_gdk_clip_by_children is
		do
			value := gdk_clip_by_children_low_level
		end

	set_gdk_include_inferiors is
		do
			value := gdk_include_inferiors_low_level
		end

feature {ANY} -- Queries
	is_gdk_clip_by_children: BOOLEAN is
		do
			Result := (value=gdk_clip_by_children_low_level)
		end

	is_gdk_include_inferiors: BOOLEAN is
		do
			Result := (value=gdk_include_inferiors_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gdk_clip_by_children_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_CLIP_BY_CHILDREN"
 			}"
 		end

	gdk_include_inferiors_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GDK_INCLUDE_INFERIORS"
 			}"
 		end


end -- class GDKSUBWINDOWMODE_ENUM
