-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.
deferred class GSOURCECLOSURE_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	g_source_set_closure (a_source: POINTER; a_closure: POINTER) 
               -- g_source_set_closure
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_source_set_dummy_callback (a_source: POINTER) 
               -- g_source_set_dummy_callback
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end


end -- class GSOURCECLOSURE_EXTERNALS
