-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
class PACKRAT_SEQUENCE

inherit
   PACKRAT_ALTERNATIVE
      redefine
         set_nt
      end

insert
   PACKRAT
      redefine
         out_in_tagged_out_memory
      end

create {PACKRAT}
   make

feature {ANY}
   is_coherent: BOOLEAN is
      local
         i: INTEGER
      do
         from
            Result := True
            i := primaries.lower
         until
            not Result or else i > primaries.upper
         loop
            Result := primaries.item(i).is_coherent
            i := i + 1
         end
      end

   out_in_tagged_out_memory is
      local
         i: INTEGER
      do
         from
            i := primaries.lower
         until
            i > primaries.upper
         loop
            if i > primaries.lower then
               tagged_out_memory.extend(' ')
            end
            primaries.item(i).out_in_tagged_out_memory
            i := i + 1
         end
      end

feature {PACKRAT_INTERNAL}
   set_default_tree_builders (non_terminal_builder: PROCEDURE[TUPLE[FIXED_STRING, TRAVERSABLE[FIXED_STRING]]]; terminal_builder: PROCEDURE[TUPLE[FIXED_STRING, PARSER_IMAGE]]) is
      local
         i: INTEGER
      do
         if action = Void then
            action := agent call_non_terminal_builder(non_terminal_builder)
         end
         from
            i := primaries.lower
         until
            i > primaries.upper
         loop
            primaries.item(i).set_default_tree_builders(non_terminal_builder, terminal_builder)
            i := i + 1
         end
      end

   set_nt (a_nt: like nt) is
      local
         i: INTEGER
      do
         Precursor(a_nt)
         from
            i := primaries.lower
         until
            i > primaries.upper
         loop
            primaries.item(i).set_nt(a_nt)
            i := i + 1
         end
         id := a_nt.new_sequence_number
      end

feature {}
   primaries: TRAVERSABLE[PACKRAT_PRIMARY]
   how_many: INTEGER_8
   action: PROCEDURE[TUPLE]
   id: INTEGER

   pack_parse (context: PACKRAT_PARSE_CONTEXT): TRISTATE is
      local
         parsed: TRISTATE
      do
         inspect
            how_many
         when one then
io.put_line(once "parsing sequence (1) of #(1) at #(2)" # nt.name # context.buffer.current_index.out)
            Result := do_parse(context)
         when zero_or_one then
io.put_line(once "parsing sequence (?) of #(1) at #(2)" # nt.name # context.buffer.current_index.out)
            parsed := do_parse(context)
            Result := yes
         when zero_or_more then
io.put_line(once "parsing sequence (*) of #(1) at #(2)" # nt.name # context.buffer.current_index.out)
            from
               Result := yes
               parsed := yes
            until
               parsed /= yes
            loop
               parsed := do_parse(context)
            end
         when one_or_more then
io.put_line(once "parsing sequence (+) of #(1) at #(2)" # nt.name # context.buffer.current_index.out)
            from
               Result := no
               parsed := yes
            until
               parsed /= yes
            loop
               parsed := do_parse(context)
               if parsed = yes then
                  Result := yes
               end
            end
         end
      end

   do_parse (context: PACKRAT_PARSE_CONTEXT): TRISTATE is
      local
         i: INTEGER; memo: PACKRAT_CONTEXT_MEMO
         parse_action: PARSE_ACTION
      do
         debug
            io.put_line(once "doing parse of sequence of #(1) at #(2)" # nt.name # context.buffer.current_index.out)
         end
         from
            Result := yes
            memo := context.memo
            i := primaries.lower
         until
            Result /= yes or else i > primaries.upper
         loop
            Result := primaries.item(i).parse(context)
            i := i + 1
         end
         if Result = yes then
            create parse_action.make(action)
            debug ("parse")
               parse_action.set_name(once "Sequence #(1) of %"#(2)%"" # id.out # nt.name)
            end
            context.actions.add_last(parse_action)
         else
            context.restore(memo)
         end
      end

   call_non_terminal_builder (non_terminal_builder: PROCEDURE[TUPLE[FIXED_STRING, TRAVERSABLE[FIXED_STRING]]]) is
      do
         non_terminal_builder.call([nt.name, Void])
      end

feature {}
   make (a_primaries: TRAVERSABLE[PACKRAT_PRIMARY]; a_how_many: like how_many; a_action: like action) is
      require
         a_primaries /= Void
         a_how_many.in_range(one, one_or_more)
      do
         primaries := a_primaries
         how_many := a_how_many
         action := a_action
      ensure
         primaries = a_primaries
         how_many = a_how_many
         action = a_action
      end

invariant
   primaries /= Void
   how_many.in_range(one, one_or_more)

end -- class PACKRAT_SEQUENCE
--
-- Copyright (c) 2009 by all the people cited in the AUTHORS file.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- THE SOFTWARE.