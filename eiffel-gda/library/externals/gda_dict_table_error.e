indexing
	description: "Enum GdaDictTableError"
	status: "[
                  AUTOMATICALLY GENERATED FILE. 

                  ANY CHANGE TO THIS WILL BE OVERWRITTEN BY NEXT
                  EXECUTION OF GENERATING SCRIPT!  You can put your
                  changes in the patch file gda_dict_table_error.e.patch;
                  those changes will be applied to the newly generated
                  file.
                  ]"

expanded class GDA_DICT_TABLE_ERROR
       -- Enum GdaDictTableError

insert ENUM

creation set_table_xml_load_error

feature -- Setters

    set_table_xml_load_error is 
       do
          value := gda_dict_table_xml_load_error 
       ensure is_table_xml_load_error 
       end

    set_table_meta_data_update is 
       do
          value := gda_dict_table_meta_data_update 
       ensure is_table_meta_data_update 
       end

    set_fields_error is 
       do
          value := gda_dict_fields_error 
       ensure is_fields_error 
       end

feature -- Queries

    is_table_xml_load_error: BOOLEAN is do Result:=(value=gda_dict_table_xml_load_error) end

    is_table_meta_data_update: BOOLEAN is do Result:=(value=gda_dict_table_meta_data_update) end

    is_fields_error: BOOLEAN is do Result:=(value=gda_dict_fields_error) end


    is_valid_value (a_value: INTEGER): BOOLEAN is 
        do 
           Result:=(
                    (a_value=gda_dict_table_xml_load_error) or else
                    (a_value=gda_dict_table_meta_data_update) or else
                    (a_value=gda_dict_fields_error) or else
                    False -- A little hack to simplifies the generating script.
                    )
        end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values

    gda_dict_table_xml_load_error: INTEGER is
         external "C macro use /usr/include/libgda-3.0/libgda/gda-dict-table.h"
         alias "GDA_DICT_TABLE_XML_LOAD_ERROR"
         end

    gda_dict_table_meta_data_update: INTEGER is
         external "C macro use /usr/include/libgda-3.0/libgda/gda-dict-table.h"
         alias "GDA_DICT_TABLE_META_DATA_UPDATE"
         end

    gda_dict_fields_error: INTEGER is
         external "C macro use /usr/include/libgda-3.0/libgda/gda-dict-table.h"
         alias "GDA_DICT_FIELDS_ERROR"
         end

end -- class GDA_DICT_TABLE_ERROR
