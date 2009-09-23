class C_QUALIFIED_TYPE
	-- A CvQualifiedType node of an XML file generated by gccxml.

	-- Known attributes are: const, restrict, volatile

inherit 
	GCCXML_NODE
	IDENTIFIED_NODE
	TYPED_NODE
	STORABLE_NODE
	LIBERTY_TYPED

creation make

feature 
	store is
		do
			types.fast_put(Current,id)	
		end

	wrapper_type: STRING is
		do
			Result:= types.at(type).wrapper_type
		end
-- invariant name.is_equal(once U"CvQualifiedType")
end -- class C_QUALIFIED_TYPE
