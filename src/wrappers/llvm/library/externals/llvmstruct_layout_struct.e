-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class LLVMSTRUCT_LAYOUT_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	LLVM_TYPES
	-- Fieldless structure
feature {WRAPPER, WRAPPER_HANDLER} -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_LLVMStructLayout"
		}"
		end

end -- class LLVMSTRUCT_LAYOUT_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

