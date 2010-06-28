class FFI_CALL
	-- A Foreign Function Interface call.

	 -- Libffi' assumes that you have a pointer to the function you wish to
	 -- call and that you know the number and types of arguments to pass it, as
	 -- well as the return type of the function.

	 -- The first thing you must do is create an ffi_cif object that matches
	 -- the signature of the function you wish to call. This is a separate step
	 -- because it is common to make multiple calls using a single ffi_cif. The
	 -- cif in ffi_cif stands for Call InterFace. To prepare a call interface
	 -- object, use the function ffi_prep_cif.

inherit 
	C_STRUCT
	EIFFEL_OWNED
insert 
	FFI_TYPES
	FFI_CIF_STRUCT
	FFI_EXTERNALS
	
creation {ANY} prepare

feature {ANY} -- Preparation of a call
	prepare (a_function: POINTER; a_return_type: POINTER; some_argument_types: ARRAYED_COLLECTION[POINTER]) is
	-- Initializes Current call according to the given parameters.

	-- Functions with variable number of arguments (also known as varargs) are not supported.
	
	-- `a_return_type' must be a pointer to an ffi_type structure that describes the return type of the function. See FFI_TYPES.

	-- `some_argument_types' contains the types of arguments. May be Void 

	-- FFI allows to use several different ABI conventions, but they are highly
	-- platform-dependent. TODO: support different ABIs.
	
	-- `status' is updated and will be either is_ok if everything worked
	-- properly;  is_bad__abi if the ABI is invalid (see above); its value may
	-- be "FFI_BAD_TYPEDEF" if one of the arguments is incorrect; TODO: this
	-- value should belong to FFI_STATUSENUM but currently it is not found in
	-- the code.
	require 
		a_function.is_not_null
		a_return_type.is_not_null
		some_argument_types/=Void implies not some_argument_types.is_empty
	-- TODO: reactivate the following preconditions when they will not make the compiler produce wrong code anymore. Paolo 2010-03-19
	-- 	is_valid_type(a_return_type)
	-- 	some_argument_types=Void or else 
	-- 	some_argument_types.for_all(agent is_valid_type)	
		local
			args: POINTER; count: NATURAL_32
	do
		handle:=malloc(struct_size) -- Also allocate works
		function := a_function
		argument_types:=some_argument_types
		if argument_types /= Void then
			args := argument_types.to_external
			count := argument_types.count.to_natural_32
		else
			check
				args.is_null
				count = 0.to_natural_32
			end
		end
		status.change_value(ffi_prep_cif(handle, default_abi, count, a_return_type, args))
		check not status.is_bad_abi end
	ensure
		function_set: function = a_function
		-- Note: someone may want to turn this into invariant Actually they
		-- are right, it is an invariant. But since we do not offer a feature
		-- to change function value we only need to check that this creation
		-- feature correctly set it.
	end

	invoke (a_result: POINTER; some_values: ARRAYED_COLLECTION[POINTER]) is		
 		-- Calls `function' according to the description of Current.
		
		-- `a_result' shall point to a chunk of memory that will hold the
		-- result of the function call.  This must be large enough to hold the
		-- result and must be suitably aligned; it is the caller's
		-- responsibility to ensure this. If Current declares that the function
		-- returns void (using ffi_type_void), then `a_result' is ignored. If
		-- `a_result' is NULL then the return value is discarded.

		-- `some_values' shall point to a vector of "void *" pointers that
		-- point to the memory locations holding the argument values for a
		-- call. If Current declares that the function has no arguments (i.e.,
		-- nargs was 0), then avalues is ignored. 
	
	-- TODO: reactivate the following preconditions when they will not make the compiler produce wrong code anymore. Paolo 2010-03-19
	-- require
	--	parameterless_shall_be_called_without_parameters: some_values=Void implies argument_types=Void
	--	correct_number_of_paramenters: some_values/=Void implies argument_types.count = some_values.count
	local h,f,r,v: POINTER
	do
		h:=handle
		f:=function
		r:=a_result
		if some_values/=Void then 
			v:= some_values.to_external
		end
		ffi_call(h,f,r,v)
	end
feature {ANY} -- Status
	status: FFI_STATUS_ENUM is
		-- The status of Current call.
		attribute
	end
	
	function: POINTER is
		-- The address of the function that will be called
		attribute
	end

	argument_types: ARRAYED_COLLECTION[POINTER] is
		-- Pointers to the structures describing the function that will be called
		attribute
	end

feature {} -- Implementation
	default_abi: INTEGER_32 is	
		-- The enumeration value representing the default ABI. To be removed whenever support for different ABIs will be provided.
		external "plug_in"
		alias "{
			location: "externals"
		module_name: "plugin"
		feature_name: "FFI_DEFAULT_ABI"
	}"
	end
	
end -- class FFI_CALL
