indexing
	description: "Enum GdaQueryJoinError"
	status: "[
                  AUTOMATICALLY GENERATED FILE. 

                  ANY CHANGE TO THIS WILL BE OVERWRITTEN BY NEXT
                  EXECUTION OF GENERATING SCRIPT!  You can put your
                  changes in the patch file gda_query_join_error.e.patch;
                  those changes will be applied to the newly generated
                  file.
                  ]"

expanded class GDA_QUERY_JOIN_ERROR
       -- Enum GdaQueryJoinError

insert ENUM

creation set_xml_load_error

feature -- Setters

    set_xml_load_error is 
       do
          value := gda_query_join_xml_load_error 
       ensure is_xml_load_error 
       end

    set_meta_data_update is 
       do
          value := gda_query_join_meta_data_update 
       ensure is_meta_data_update 
       end

    set_fields_error is 
       do
          value := gda_query_join_fields_error 
       ensure is_fields_error 
       end

    set_sql_analyse_error is 
       do
          value := gda_query_join_sql_analyse_error 
       ensure is_sql_analyse_error 
       end

    set_parse_error is 
       do
          value := gda_query_join_parse_error 
       ensure is_parse_error 
       end

feature -- Queries

    is_xml_load_error: BOOLEAN is do Result:=(value=gda_query_join_xml_load_error) end

    is_meta_data_update: BOOLEAN is do Result:=(value=gda_query_join_meta_data_update) end

    is_fields_error: BOOLEAN is do Result:=(value=gda_query_join_fields_error) end

    is_sql_analyse_error: BOOLEAN is do Result:=(value=gda_query_join_sql_analyse_error) end

    is_parse_error: BOOLEAN is do Result:=(value=gda_query_join_parse_error) end


    is_valid_value (a_value: INTEGER): BOOLEAN is 
        do 
           Result:=(
                    (a_value=gda_query_join_xml_load_error) or else
                    (a_value=gda_query_join_meta_data_update) or else
                    (a_value=gda_query_join_fields_error) or else
                    (a_value=gda_query_join_sql_analyse_error) or else
                    (a_value=gda_query_join_parse_error) or else
                    False -- A little hack to simplifies the generating script.
                    )
        end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values

    gda_query_join_xml_load_error: INTEGER is
         external "C macro use /usr/include/libgda-3.0/libgda/gda-query-join.h"
         alias "GDA_QUERY_JOIN_XML_LOAD_ERROR"
         end

    gda_query_join_meta_data_update: INTEGER is
         external "C macro use /usr/include/libgda-3.0/libgda/gda-query-join.h"
         alias "GDA_QUERY_JOIN_META_DATA_UPDATE"
         end

    gda_query_join_fields_error: INTEGER is
         external "C macro use /usr/include/libgda-3.0/libgda/gda-query-join.h"
         alias "GDA_QUERY_JOIN_FIELDS_ERROR"
         end

    gda_query_join_sql_analyse_error: INTEGER is
         external "C macro use /usr/include/libgda-3.0/libgda/gda-query-join.h"
         alias "GDA_QUERY_JOIN_SQL_ANALYSE_ERROR"
         end

    gda_query_join_parse_error: INTEGER is
         external "C macro use /usr/include/libgda-3.0/libgda/gda-query-join.h"
         alias "GDA_QUERY_JOIN_PARSE_ERROR"
         end

end -- class GDA_QUERY_JOIN_ERROR
