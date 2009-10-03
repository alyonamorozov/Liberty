-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class FLOAT_ROUND_STYLEENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

creation default_create
feature -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := ((a_value = indeterminate_low_level)  or else
				(a_value = to_nearest_low_level)  or else
				(a_value = toward_infinity_low_level)  or else
				(a_value = toward_neg_infinity_low_level) )
		end

feature -- Setters
	default_create,
	set_indeterminate is
		do
			value := indeterminate_low_level
		end

	set_to_nearest is
		do
			value := to_nearest_low_level
		end

	set_toward_infinity is
		do
			value := toward_infinity_low_level
		end

	set_toward_neg_infinity is
		do
			value := toward_neg_infinity_low_level
		end

feature -- Queries
	is_indeterminate: BOOLEAN is
		do
			Result := (value=indeterminate_low_level)
		end

	is_to_nearest: BOOLEAN is
		do
			Result := (value=to_nearest_low_level)
		end

	is_toward_infinity: BOOLEAN is
		do
			Result := (value=toward_infinity_low_level)
		end

	is_toward_neg_infinity: BOOLEAN is
		do
			Result := (value=toward_neg_infinity_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	indeterminate_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "round_indeterminate"
 			}"
 		end

	to_nearest_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "round_to_nearest"
 			}"
 		end

	toward_infinity_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "round_toward_infinity"
 			}"
 		end

	toward_neg_infinity_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "round_toward_neg_infinity"
 			}"
 		end


end -- class FLOAT_ROUND_STYLEENUM
