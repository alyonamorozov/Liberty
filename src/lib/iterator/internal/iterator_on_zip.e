-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
class ITERATOR_ON_ZIP[V_, K_]
   -- Please do not use this class directly. Look at `ITERATOR'.

inherit
   ITERATOR[TUPLE[V_, K_]]

create {ZIP[V_, K_]}
   make

feature {}
   values: ITERATOR[V_]
   keys: ITERATOR[K_]

feature {ANY}
   make (v: like values; k: like keys) is
      require
         v /= Void
         k /= Void
      do
         values := v
         keys := k
         start
      ensure
         values = v
         keys = k
      end

   start is
      do
         values.start
         keys.start
      end

   is_off: BOOLEAN is
      do
         Result := values.is_off or else keys.is_off
      end

   item: TUPLE[V_, K_] is
      do
         Result := [values.item, keys.item]
      end

   next is
      do
         values.next
         keys.next
      end

feature {ANY}
   iterable_generation: INTEGER is
      do
         Result := values.iterable_generation + keys.iterable_generation
      end

   generation: INTEGER is
      do
         Result := values.generation + keys.generation
      end

end -- class ITERATOR_ON_ZIP
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
