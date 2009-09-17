class LIBERTY_AST_INVARIANT

inherit
	LIBERTY_AST_LIST[LIBERTY_AST_ASSERTION]
		export
			{LIBERTY_AST_INVARIANT_VISITOR} list_valid_index, list_count, list_lower, list_upper, list_item
		end

create {LIBERTY_NODE_FACTORY}
	make

feature {ANY}
	name: STRING is "Invariant"

feature {ANY}
	accept (visitor: VISITOR) is
		local
			v: LIBERTY_AST_INVARIANT_VISITOR
		do
			v ::= visitor
			v.visit_liberty_ast_invariant(Current)
		end

end