-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GTKACCELFLAGS_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = gtk_accel_locked_low_level)  or else
				(a_value = gtk_accel_mask_low_level)  or else
				(a_value = gtk_accel_visible_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_gtk_accel_locked is
		do
			value := gtk_accel_locked_low_level
		end

	set_gtk_accel_mask is
		do
			value := gtk_accel_mask_low_level
		end

	set_gtk_accel_visible is
		do
			value := gtk_accel_visible_low_level
		end

feature {ANY} -- Queries
	is_gtk_accel_locked: BOOLEAN is
		do
			Result := (value=gtk_accel_locked_low_level)
		end

	is_gtk_accel_mask: BOOLEAN is
		do
			Result := (value=gtk_accel_mask_low_level)
		end

	is_gtk_accel_visible: BOOLEAN is
		do
			Result := (value=gtk_accel_visible_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gtk_accel_locked_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_ACCEL_LOCKED"
 			}"
 		end

	gtk_accel_mask_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_ACCEL_MASK"
 			}"
 		end

	gtk_accel_visible_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "GTK_ACCEL_VISIBLE"
 			}"
 		end


end -- class GTKACCELFLAGS_ENUM
