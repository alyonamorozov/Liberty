-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GSL_SF_CLAUSEN_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	gsl_sf_clausen (a_x: REAL): REAL is
 		-- gsl_sf_clausen
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_sf_clausen"
		}"
		end

	gsl_sf_clausen_e (a_x: REAL; a_result: POINTER): INTEGER is
 		-- gsl_sf_clausen_e
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_sf_clausen_e"
		}"
		end


end -- class GSL_SF_CLAUSEN_EXTERNALS
