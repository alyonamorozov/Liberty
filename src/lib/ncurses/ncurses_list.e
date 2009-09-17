-- See the Copyright notice at the end of this file.
--
class NCURSES_LIST[E_]
	--
	-- This class adds a list selection widget.
	--
	
inherit
	NCURSES_WIDGET
	TRAVERSABLE[E_]
	
creation{ANY}
	make

feature {ANY}
	left: INTEGER

	top: INTEGER

	width: INTEGER

	height: INTEGER

	refresh_later is
		local
			i: INTEGER
		do
			from
				i := items.lower
			variant
				items.upper - i
			until
				i > items.upper
			loop
				if is_selected(i) then
					window.set_attribute(ncurses.a_underline)
				end
				if i = focused then
					window.set_attribute(ncurses.a_reverse)
				end
				window.put_string_at(items.item(i).tag, 0, i)
				if i = focused then
					window.unset_attribute(ncurses.a_reverse)
				end
				if is_selected(i) then
					window.unset_attribute(ncurses.a_underline)
				end
				i := i + 1
			end
		end

	add_first (string: STRING; elt: E_) is
		require
			string /= Void
		do
			items.add_first(create {NCURSES_LIST_ITEM[E_]}.make(False, string, elt))
		end

	add_last (string: STRING; elt: E_) is
		require
			string /= Void
		do
			items.add_last(create {NCURSES_LIST_ITEM[E_]}.make(False, string, elt))
		end

	add (string: STRING; elt: E_; index: INTEGER) is
		require
			string /= Void
		do
			items.add(create {NCURSES_LIST_ITEM[E_]}.make(False, string, elt), index)
		end

	put (string: STRING; elt: E_; index: INTEGER) is
		require
			string /= Void
		local
			ncurses_list_item: NCURSES_LIST_ITEM[E_]
		do
			ncurses_list_item := items.item(index)
			ncurses_list_item.set_is_selected(False)
			ncurses_list_item.set_tag(string)
			ncurses_list_item.set_value(elt)
		end

	select_item (index: INTEGER) is
		local
			i: INTEGER
		do
			if not is_multiple_selection_allowed then
				from
					i := items.lower
				variant
					items.upper - i
				until
					i > items.upper
				loop
					if i /= index then
						deselect_item(i)
					end
					i := i + 1
				end
			end
			items.item(index).set_is_selected(True)
		end

	deselect_item (index: INTEGER) is
		do
			items.item(index).set_is_selected(False)
		end

	is_selected (index: INTEGER): BOOLEAN is
		do
			Result := items.item(index).is_selected
		end

	is_multiple_selection_allowed: BOOLEAN

	allow_multiple_selection (b: like is_multiple_selection_allowed) is
		local
			i: INTEGER
		do
			is_multiple_selection_allowed := b
			if not is_multiple_selection_allowed then
				from
					i := items.lower
				variant
					items.upper - i
				until
					i > items.upper
				loop
					deselect_item(i)
					i := i + 1
				end
			end
		end

	get_selection: HASHED_DICTIONARY[E_, INTEGER] is
		local
			i: INTEGER
		do
			create Result.make
			from
				i := items.lower
			variant
				items.upper - i
			until
				i > items.upper
			loop
				if is_selected(i) then
					Result.put(item(i), i)
				end
				i := i + 1
			end
		end

	set_focus_on (index: INTEGER) is
		require
			items.valid_index(index)
		do
			focused := index
		ensure
			focused = index			
		end

	focused: INTEGER

feature {ANY} -- The TRAVERSABLE ability:
	count: INTEGER is
		do
			Result := items.count
		end

	lower: INTEGER is
		do
			Result := items.lower
		end

	upper: INTEGER is
		do
			Result := items.upper
		end

	is_empty: BOOLEAN is
		do
			Result := items.is_empty
		end
	
	item (i: INTEGER): E_ is
		do
			Result := items.item(i).value
		end

	first: like item is
		do
			Result := item(lower)
		end

	last: like item is
		do
			Result := item(upper)
		end
	
	new_iterator: ITERATOR[E_] is
		do
			not_yet_implemented
		end
	
feature{NCURSES_WIDGET}
	get_window: NCURSES_WINDOW is
		do
			Result := window
		end

	parent_resized is
		do
		end

feature{}
	make (p: like parent; x, y, w, h: INTEGER) is
		require
			ncurses.is_enabled
			p /= Void
			x >= 0
			y >= 0
			x + w <= p.width
			y + h <= p.height
		do
			create items.make(0)
			left := x
			top := y
			width := w
			height := h
			set_parent(p)
			window := p.get_window.create_sub_window(left, top, width, height)
		ensure
			left = x
			top = y
			width = w
			height = h
		end

	window: NCURSES_WINDOW

	items: FAST_ARRAY[NCURSES_LIST_ITEM[E_]]

invariant
	window /= Void

	items /= Void

	(not items.is_empty) implies items.valid_index(focused)

end -- class NCURSES_LIST
--
-- ------------------------------------------------------------------------------------------------------------
-- Copyright notice below. Please read.
--
-- This file is part of the SmartEiffel standard library.
-- Copyright(C) 1994-2002: INRIA - LORIA (INRIA Lorraine) - ESIAL U.H.P.       - University of Nancy 1 - FRANCE
-- Copyright(C) 2003-2006: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN, Pierre-Nicolas CLAUSS
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
-- documentation files (the "Software"), to deal in the Software without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
-- the Software, and to permit persons to whom the Software is furnished to do so, subject to the following
-- conditions:
--
-- The above copyright notice and this permission notice shall be included in all copies or substantial
-- portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
-- LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO
-- EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
-- AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
-- OR OTHER DEALINGS IN THE SOFTWARE.
--
-- http://SmartEiffel.loria.fr - SmartEiffel@loria.fr
-- ------------------------------------------------------------------------------------------------------------