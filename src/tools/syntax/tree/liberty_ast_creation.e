class LIBERTY_AST_CREATION

inherit
	LIBERTY_AST_NON_TERMINAL_NODE

create {LIBERTY_NODE_FACTORY}
	make

feature {LIBERTY_AST_CREATION_VISITOR}
	has_type_definition: BOOLEAN is
		do
			Result := nodes.item(1).name.is_equal(once "KW {")
		end

	has_creation_feature_call: BOOLEAN is
		do
			if has_type_definition then
				Result := count = 8
			else
				Result := count = 5
			end
		end

	writable: LIBERTY_AST_WRITABLE is
		do
			if has_type_definition then
				Result ::= nodes.item(4)
			else
				Result ::= nodes.item(1)
			end
		end

	type_definition: LIBERTY_AST_TYPE_DEFINITION is
		require
			has_type_definition
		do
			Result ::= nodes.item(2)
		end

	creation_feature_name: LIBERTY_AST_ENTITY_NAME is
		require
			has_creation_feature_call
		do
			if has_type_definition then
				Result ::= nodes.item(6)
			else
				Result ::= nodes.item(3)
			end
		end

	creation_feature_actuals: LIBERTY_AST_ACTUALS is
		require
			has_creation_feature_call
		do
			if has_type_definition then
				Result ::= nodes.item(7)
			else
				Result ::= nodes.item(4)
			end
		end

feature {ANY}
	count: INTEGER is
		do
			Result := nodes.count
		end

	name: STRING is "Creation"

feature {}
	possible_counts: SET[INTEGER] is
		once
			Result := {AVL_SET[INTEGER] << 2, 5, 8 >> }
		end

feature {ANY}
	accept (visitor: VISITOR) is
		local
			v: LIBERTY_AST_CREATION_VISITOR
		do
			v ::= visitor
			v.visit_liberty_ast_creation(Current)
		end

end