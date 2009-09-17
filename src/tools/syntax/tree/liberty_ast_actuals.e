class LIBERTY_AST_ACTUALS

inherit
	LIBERTY_AST_LIST[LIBERTY_AST_ACTUAL]
		export
			{LIBERTY_AST_ACTUALS_VISITOR} list_valid_index, list_count, list_lower, list_upper, list_item
		redefine
			possible_counts
		end

create {LIBERTY_NODE_FACTORY}
	make

feature {ANY}
	name: STRING is "Actuals"

feature {}
	possible_counts: SET[INTEGER] is
		once
			Result := {AVL_SET[INTEGER] << 0, 3 >> }
		end

feature {ANY}
	accept (visitor: VISITOR) is
		local
			v: LIBERTY_AST_ACTUALS_VISITOR
		do
			v ::= visitor
			v.visit_liberty_ast_actuals(Current)
		end

end