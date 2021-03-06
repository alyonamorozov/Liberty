-- This file has been created by wrappers_generator.
-- Any change will be lost by the next execution of the tool.
deferred class STANDARD_C_LIBRARY_TYPES


insert ANY undefine is_equal, copy end

feature {ANY} -- C type definitions (typedefs)
feature {ANY} -- variable-size types
       long: INTEGER_64
               -- a query with the same type of c 'long int'. useful when dealing with
               -- code that uses long int variable: just insert th class and mark
               -- the type as 'like long'
       do
               -- empty by design
       end

   long_unsigned: NATURAL_64
               -- a query with the same type of c 'long unsigned int'. useful when dealing with
               -- code that uses long int variable: just insert th class and mark
               -- the type as 'like long_unsigned'
       do
               -- empty by design
       end

feature {ANY} -- C type definitions (typedefs)
       comparison_fn_t: POINTER
               -- typedef comparison_fn_t from /usr/include/stdlib.h line 745
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       timer_t: POINTER
               -- typedef timer_t from /usr/include/time.h line 103
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       clockid_t: INTEGER
               -- typedef clockid_t from /usr/include/time.h line 91
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       time_t: like long
               -- typedef time_t from /usr/include/time.h line 75
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       clock_t: like long
               -- typedef clock_t from /usr/include/time.h line 59
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uintmax_t: like long_unsigned
               -- typedef uintmax_t from /usr/include/stdint.h line 135
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       intmax_t: like long
               -- typedef intmax_t from /usr/include/stdint.h line 134
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uintptr_t: like long_unsigned
               -- typedef uintptr_t from /usr/include/stdint.h line 122
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       intptr_t: like long
               -- typedef intptr_t from /usr/include/stdint.h line 119
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uint_fast64_t: like long_unsigned
               -- typedef uint_fast64_t from /usr/include/stdint.h line 107
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uint_fast32_t: like long_unsigned
               -- typedef uint_fast32_t from /usr/include/stdint.h line 106
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uint_fast16_t: like long_unsigned
               -- typedef uint_fast16_t from /usr/include/stdint.h line 105
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uint_fast8_t: CHARACTER
               -- typedef uint_fast8_t from /usr/include/stdint.h line 103
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       int_fast64_t: like long
               -- typedef int_fast64_t from /usr/include/stdint.h line 94
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       int_fast32_t: like long
               -- typedef int_fast32_t from /usr/include/stdint.h line 93
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       int_fast16_t: like long
               -- typedef int_fast16_t from /usr/include/stdint.h line 92
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       int_fast8_t: CHARACTER
               -- typedef int_fast8_t from /usr/include/stdint.h line 90
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uint_least64_t: like long_unsigned
               -- typedef uint_least64_t from /usr/include/stdint.h line 80
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uint_least32_t: NATURAL
               -- typedef uint_least32_t from /usr/include/stdint.h line 78
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uint_least16_t: NATURAL_16
               -- typedef uint_least16_t from /usr/include/stdint.h line 77
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uint_least8_t: CHARACTER
               -- typedef uint_least8_t from /usr/include/stdint.h line 76
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       int_least64_t: like long
               -- typedef int_least64_t from /usr/include/stdint.h line 69
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       int_least32_t: INTEGER
               -- typedef int_least32_t from /usr/include/stdint.h line 67
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       int_least16_t: INTEGER_16
               -- typedef int_least16_t from /usr/include/stdint.h line 66
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       int_least8_t: CHARACTER
               -- typedef int_least8_t from /usr/include/stdint.h line 65
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uint64_t: like long_unsigned
               -- typedef uint64_t from /usr/include/stdint.h line 55
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uint32_t: NATURAL
               -- typedef uint32_t from /usr/include/stdint.h line 51
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uint16_t: NATURAL_16
               -- typedef uint16_t from /usr/include/stdint.h line 49
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       uint8_t: CHARACTER
               -- typedef uint8_t from /usr/include/stdint.h line 48
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       int64_t: like long
               -- typedef int64_t from /usr/include/stdint.h line 40
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       int32_t: INTEGER
               -- typedef int32_t from /usr/include/stdint.h line 38
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       int16_t: INTEGER_16
               -- typedef int16_t from /usr/include/stdint.h line 37
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       int8_t: CHARACTER
               -- typedef int8_t from /usr/include/stdint.h line 36
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       ssize_t: like long
               -- typedef ssize_t from /usr/include/stdint.h line 102
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       off64_t: like long
               -- typedef off64_t from /usr/include/stdio.h line 97
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       off_t: like long
               -- typedef off_t from /usr/include/stdio.h line 90
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       size_t: like long_unsigned
               -- typedef size_t from /usr/include/stdlib.h line 62
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       ptrdiff_t: like long
               -- typedef ptrdiff_t from /usr/include/stdint.h line 51
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       error_t: INTEGER
               -- typedef error_t from /usr/include/errno.h line 68
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

end
