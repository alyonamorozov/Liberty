class SQLITE_STRING_VALUE
	-- A text value stored in a SQLite database. 

inherit 
	SQLITE_VALUE
	TYPED_VARIANT[STRING]

create
	{ANY} set_item

feature {SQLITE_PREPARED_STATEMENT} 
	bind_in (a_statement: SQLITE_PREPARED_STATEMENT; an_index: INTEGER) is
		local res: INTEGER
		do
			res := sqlite3_bind_text (a_statement.handle, 
				an_index, 
				item.to_external, -- pointer to text memory area
				item.count, -- the OFFSET of the null (0) terminator. As STRING.lower is 1 count equals the offset of the terminator. This may (read: WILL) change when dealing with other kinds of generic strings
				sqlite_transient -- pointer to the C function used as destructor of the memory area
				)
		end
		 
feature {ANY}
	as_string: STRING is 
		do
			Result := item.to_string
		end
	type: INTEGER is
		do
			Result := sqlite_float
		end
end

-- Copyright: "(C) 2014 Paolo Redaelli "
-- License: "LGPL v2 or later"


