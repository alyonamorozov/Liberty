-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GDATEDMY_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN is
        do
            Result := ((a_value = g_date_day_low_level)  or else
				(a_value = g_date_month_low_level)  or else
				(a_value = g_date_year_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_g_date_day is
		do
			value := g_date_day_low_level
		end

	set_g_date_month is
		do
			value := g_date_month_low_level
		end

	set_g_date_year is
		do
			value := g_date_year_low_level
		end

feature {ANY} -- Queries
	is_g_date_day: BOOLEAN is
		do
			Result := (value=g_date_day_low_level)
		end

	is_g_date_month: BOOLEAN is
		do
			Result := (value=g_date_month_low_level)
		end

	is_g_date_year: BOOLEAN is
		do
			Result := (value=g_date_year_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_date_day_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DATE_DAY"
 			}"
 		end

	g_date_month_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DATE_MONTH"
 			}"
 		end

	g_date_year_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "G_DATE_YEAR"
 			}"
 		end


end -- class GDATEDMY_ENUM
