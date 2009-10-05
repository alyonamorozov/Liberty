-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class ENDIANNESS_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

creation default_create
feature -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := ((a_value = any_endianness_low_level)  or else
				(a_value = big_endian_low_level) )
		end

feature -- Setters
	default_create,
	set_any_endianness is
		do
			value := any_endianness_low_level
		end

	set_big_endian is
		do
			value := big_endian_low_level
		end

feature -- Queries
	is_any_endianness: BOOLEAN is
		do
			Result := (value=any_endianness_low_level)
		end

	is_big_endian: BOOLEAN is
		do
			Result := (value=big_endian_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	any_endianness_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "AnyEndianness"
 			}"
 		end

	big_endian_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "BigEndian"
 			}"
 		end


end -- class ENDIANNESS_ENUM
