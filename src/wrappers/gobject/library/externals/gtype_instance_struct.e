-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.
deferred class GTYPE_INSTANCE_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GOBJECT_TYPES
feature {} -- Low-level setters

   gtype_instance_struct_set_g_class (a_structure: POINTER; a_value: POINTER) 
         -- Setter for g_class field of GTYPE_INSTANCE_STRUCT structure.
         -- TODO: setter description

      external "plug_in"
      alias "{
         location: "."
         module_name: "plugin"
         feature_name: "gtype_instance_struct_set_g_class"
      }"
      end

feature {} -- Low-level queries

   gtype_instance_struct_get_g_class (a_structure: POINTER): POINTER 
         -- Query for g_class field of GTYPE_INSTANCE_STRUCT structure.
         -- TODO: getter description

      external "plug_in"
      alias "{
         location: "."
         module_name: "plugin"
         feature_name: "gtype_instance_struct_get_g_class"
      }"
      end

feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
       struct_size: like size_t 
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "sizeof__GTypeInstance"
               }"
               end

end -- class GTYPE_INSTANCE_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.
