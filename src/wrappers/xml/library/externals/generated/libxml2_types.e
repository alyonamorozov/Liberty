-- This file has been created by wrappers_generator.
-- Any change will be lost by the next execution of the tool.
deferred class LIBXML2_TYPES


insert ANY undefine is_equal, copy end

	STANDARD_C_LIBRARY_TYPES

feature {ANY} -- C type definitions (typedefs)
       xml_rmutex_ptr: POINTER
               -- typedef xmlRMutexPtr from /usr/include/libxml2/libxml/threads.h line 30
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_mutex_ptr: POINTER
               -- typedef xmlMutexPtr from /usr/include/libxml2/libxml/threads.h line 24
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_global_state_ptr: POINTER
               -- typedef xmlGlobalStatePtr from /usr/include/libxml2/libxml/globals.h line 121
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_deregister_node_func: POINTER
               -- typedef xmlDeregisterNodeFunc from /usr/include/libxml2/libxml/globals.h line 118
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_register_node_func: POINTER
               -- typedef xmlRegisterNodeFunc from /usr/include/libxml2/libxml/globals.h line 111
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_output_buffer_create_filename_func: POINTER
               -- typedef xmlOutputBufferCreateFilenameFunc from /usr/include/libxml2/libxml/globals.h line 57
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_parser_input_buffer_create_filename_func: POINTER
               -- typedef xmlParserInputBufferCreateFilenameFunc from /usr/include/libxml2/libxml/globals.h line 42
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_strdup_func: POINTER
               -- typedef xmlStrdupFunc from /usr/include/libxml2/libxml/xmlmemory.h line 87
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_realloc_func: POINTER
               -- typedef xmlReallocFunc from /usr/include/libxml2/libxml/xmlmemory.h line 77
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_malloc_func: POINTER
               -- typedef xmlMallocFunc from /usr/include/libxml2/libxml/xmlmemory.h line 66
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_free_func: POINTER
               -- typedef xmlFreeFunc from /usr/include/libxml2/libxml/xmlmemory.h line 57
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xlink_handler_ptr: POINTER
               -- typedef xlinkHandlerPtr from /usr/include/libxml2/libxml/xlink.h line 151
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xlink_extended_link_set_funk: POINTER
               -- typedef xlinkExtendedLinkSetFunk from /usr/include/libxml2/libxml/xlink.h line 135
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xlink_extended_link_funk: POINTER
               -- typedef xlinkExtendedLinkFunk from /usr/include/libxml2/libxml/xlink.h line 107
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xlink_simple_link_funk: POINTER
               -- typedef xlinkSimpleLinkFunk from /usr/include/libxml2/libxml/xlink.h line 82
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xlink_node_detect_func: POINTER
               -- typedef xlinkNodeDetectFunc from /usr/include/libxml2/libxml/xlink.h line 64
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xlink_title: POINTER
               -- typedef xlinkTitle from /usr/include/libxml2/libxml/xlink.h line 34
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xlink_role: POINTER
               -- typedef xlinkRole from /usr/include/libxml2/libxml/xlink.h line 33
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xlink_href: POINTER
               -- typedef xlinkHRef from /usr/include/libxml2/libxml/xlink.h line 32
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_output_close_callback: POINTER
               -- typedef xmlOutputCloseCallback from /usr/include/libxml2/libxml/xmlIO.h line 110
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_output_write_callback: POINTER
               -- typedef xmlOutputWriteCallback from /usr/include/libxml2/libxml/xmlIO.h line 100
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_output_open_callback: POINTER
               -- typedef xmlOutputOpenCallback from /usr/include/libxml2/libxml/xmlIO.h line 89
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_output_match_callback: POINTER
               -- typedef xmlOutputMatchCallback from /usr/include/libxml2/libxml/xmlIO.h line 80
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_input_close_callback: POINTER
               -- typedef xmlInputCloseCallback from /usr/include/libxml2/libxml/xmlIO.h line 63
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_input_read_callback: POINTER
               -- typedef xmlInputReadCallback from /usr/include/libxml2/libxml/xmlIO.h line 54
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_input_open_callback: POINTER
               -- typedef xmlInputOpenCallback from /usr/include/libxml2/libxml/xmlIO.h line 43
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_input_match_callback: POINTER
               -- typedef xmlInputMatchCallback from /usr/include/libxml2/libxml/xmlIO.h line 34
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_char_encoding_handler_ptr: POINTER
               -- typedef xmlCharEncodingHandlerPtr from /usr/include/libxml2/libxml/encoding.h line 140
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_char_encoding_output_func: POINTER
               -- typedef xmlCharEncodingOutputFunc from /usr/include/libxml2/libxml/encoding.h line 123
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_char_encoding_input_func: POINTER
               -- typedef xmlCharEncodingInputFunc from /usr/include/libxml2/libxml/encoding.h line 101
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_external_entity_loader: POINTER
               -- typedef xmlExternalEntityLoader from /usr/include/libxml2/libxml/parser.h line 802
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_saxhandler_v1ptr: POINTER
               -- typedef xmlSAXHandlerV1Ptr from /usr/include/libxml2/libxml/parser.h line 759
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       end_element_ns_sax2func: POINTER
               -- typedef endElementNsSAX2Func from /usr/include/libxml2/libxml/parser.h line 713
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       start_element_ns_sax2func: POINTER
               -- typedef startElementNsSAX2Func from /usr/include/libxml2/libxml/parser.h line 692
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       has_external_subset_saxfunc: POINTER
               -- typedef hasExternalSubsetSAXFunc from /usr/include/libxml2/libxml/parser.h line 659
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       has_internal_subset_saxfunc: POINTER
               -- typedef hasInternalSubsetSAXFunc from /usr/include/libxml2/libxml/parser.h line 649
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       is_standalone_saxfunc: POINTER
               -- typedef isStandaloneSAXFunc from /usr/include/libxml2/libxml/parser.h line 640
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       fatal_error_saxfunc: POINTER
               -- typedef fatalErrorSAXFunc from /usr/include/libxml2/libxml/parser.h line 630
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       error_saxfunc: POINTER
               -- typedef errorSAXFunc from /usr/include/libxml2/libxml/parser.h line 618
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       warning_saxfunc: POINTER
               -- typedef warningSAXFunc from /usr/include/libxml2/libxml/parser.h line 608
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       cdata_block_saxfunc: POINTER
               -- typedef cdataBlockSAXFunc from /usr/include/libxml2/libxml/parser.h line 596
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       comment_saxfunc: POINTER
               -- typedef commentSAXFunc from /usr/include/libxml2/libxml/parser.h line 586
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       processing_instruction_saxfunc: POINTER
               -- typedef processingInstructionSAXFunc from /usr/include/libxml2/libxml/parser.h line 576
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       ignorable_whitespace_saxfunc: POINTER
               -- typedef ignorableWhitespaceSAXFunc from /usr/include/libxml2/libxml/parser.h line 565
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       characters_saxfunc: POINTER
               -- typedef charactersSAXFunc from /usr/include/libxml2/libxml/parser.h line 553
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       reference_saxfunc: POINTER
               -- typedef referenceSAXFunc from /usr/include/libxml2/libxml/parser.h line 543
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       attribute_saxfunc: POINTER
               -- typedef attributeSAXFunc from /usr/include/libxml2/libxml/parser.h line 533
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       end_element_saxfunc: POINTER
               -- typedef endElementSAXFunc from /usr/include/libxml2/libxml/parser.h line 520
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       start_element_saxfunc: POINTER
               -- typedef startElementSAXFunc from /usr/include/libxml2/libxml/parser.h line 510
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       end_document_saxfunc: POINTER
               -- typedef endDocumentSAXFunc from /usr/include/libxml2/libxml/parser.h line 501
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       start_document_saxfunc: POINTER
               -- typedef startDocumentSAXFunc from /usr/include/libxml2/libxml/parser.h line 494
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       set_document_locator_saxfunc: POINTER
               -- typedef setDocumentLocatorSAXFunc from /usr/include/libxml2/libxml/parser.h line 486
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       unparsed_entity_decl_saxfunc: POINTER
               -- typedef unparsedEntityDeclSAXFunc from /usr/include/libxml2/libxml/parser.h line 473
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       element_decl_saxfunc: POINTER
               -- typedef elementDeclSAXFunc from /usr/include/libxml2/libxml/parser.h line 459
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       attribute_decl_saxfunc: POINTER
               -- typedef attributeDeclSAXFunc from /usr/include/libxml2/libxml/parser.h line 443
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       notation_decl_saxfunc: POINTER
               -- typedef notationDeclSAXFunc from /usr/include/libxml2/libxml/parser.h line 427
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       entity_decl_saxfunc: POINTER
               -- typedef entityDeclSAXFunc from /usr/include/libxml2/libxml/parser.h line 412
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       get_parameter_entity_saxfunc: POINTER
               -- typedef getParameterEntitySAXFunc from /usr/include/libxml2/libxml/parser.h line 399
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       get_entity_saxfunc: POINTER
               -- typedef getEntitySAXFunc from /usr/include/libxml2/libxml/parser.h line 388
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       external_subset_saxfunc: POINTER
               -- typedef externalSubsetSAXFunc from /usr/include/libxml2/libxml/parser.h line 375
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       internal_subset_saxfunc: POINTER
               -- typedef internalSubsetSAXFunc from /usr/include/libxml2/libxml/parser.h line 362
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       resolve_entity_saxfunc: POINTER
               -- typedef resolveEntitySAXFunc from /usr/include/libxml2/libxml/parser.h line 350
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_parser_node_info_seq_ptr: POINTER
               -- typedef xmlParserNodeInfoSeqPtr from /usr/include/libxml2/libxml/parser.h line 99
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_parser_node_info_ptr: POINTER
               -- typedef xmlParserNodeInfoPtr from /usr/include/libxml2/libxml/parser.h line 87
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_parser_input_deallocate: POINTER
               -- typedef xmlParserInputDeallocate from /usr/include/libxml2/libxml/parser.h line 52
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_entities_table_ptr: POINTER
               -- typedef xmlEntitiesTablePtr from /usr/include/libxml2/libxml/entities.h line 71
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_ref_table_ptr: POINTER
               -- typedef xmlRefTablePtr from /usr/include/libxml2/libxml/valid.h line 150
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_idtable_ptr: POINTER
               -- typedef xmlIDTablePtr from /usr/include/libxml2/libxml/valid.h line 142
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_attribute_table_ptr: POINTER
               -- typedef xmlAttributeTablePtr from /usr/include/libxml2/libxml/valid.h line 134
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_element_table_ptr: POINTER
               -- typedef xmlElementTablePtr from /usr/include/libxml2/libxml/valid.h line 126
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_notation_table_ptr: POINTER
               -- typedef xmlNotationTablePtr from /usr/include/libxml2/libxml/valid.h line 118
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_valid_ctxt_ptr: POINTER
               -- typedef xmlValidCtxtPtr from /usr/include/libxml2/libxml/valid.h line 81
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_validity_warning_func: POINTER
               -- typedef xmlValidityWarningFunc from /usr/include/libxml2/libxml/valid.h line 57
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_validity_error_func: POINTER
               -- typedef xmlValidityErrorFunc from /usr/include/libxml2/libxml/valid.h line 42
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_valid_state_ptr: POINTER
               -- typedef xmlValidStatePtr from /usr/include/libxml2/libxml/valid.h line 29
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_automata_state_ptr: POINTER
               -- typedef xmlAutomataStatePtr from /usr/include/libxml2/libxml/xmlautomata.h line 38
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_automata_ptr: POINTER
               -- typedef xmlAutomataPtr from /usr/include/libxml2/libxml/xmlautomata.h line 30
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_list_walker: POINTER
               -- typedef xmlListWalker from /usr/include/libxml2/libxml/list.h line 52
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_list_data_compare: POINTER
               -- typedef xmlListDataCompare from /usr/include/libxml2/libxml/list.h line 42
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_list_deallocator: POINTER
               -- typedef xmlListDeallocator from /usr/include/libxml2/libxml/list.h line 32
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_list_ptr: POINTER
               -- typedef xmlListPtr from /usr/include/libxml2/libxml/list.h line 24
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_link_ptr: POINTER
               -- typedef xmlLinkPtr from /usr/include/libxml2/libxml/list.h line 21
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_structured_error_func: POINTER
               -- typedef xmlStructuredErrorFunc from /usr/include/libxml2/libxml/xmlerror.h line 856
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_generic_error_func: POINTER
               -- typedef xmlGenericErrorFunc from /usr/include/libxml2/libxml/xmlerror.h line 845
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_error_ptr: POINTER
               -- typedef xmlErrorPtr from /usr/include/libxml2/libxml/xmlerror.h line 77
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_hash_scanner_full: POINTER
               -- typedef xmlHashScannerFull from /usr/include/libxml2/libxml/hash.h line 99
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_hash_scanner: POINTER
               -- typedef xmlHashScanner from /usr/include/libxml2/libxml/hash.h line 88
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_hash_copier: POINTER
               -- typedef xmlHashCopier from /usr/include/libxml2/libxml/hash.h line 79
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_hash_deallocator: POINTER
               -- typedef xmlHashDeallocator from /usr/include/libxml2/libxml/hash.h line 69
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_hash_table_ptr: POINTER
               -- typedef xmlHashTablePtr from /usr/include/libxml2/libxml/hash.h line 22
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_domwrap_acquire_ns_function: POINTER
               -- typedef xmlDOMWrapAcquireNsFunction from /usr/include/libxml2/libxml/tree.h line 603
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_domwrap_ctxt_ptr: POINTER
               -- typedef xmlDOMWrapCtxtPtr from /usr/include/libxml2/libxml/tree.h line 590
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_doc_ptr: POINTER
               -- typedef xmlDocPtr from /usr/include/libxml2/libxml/tree.h line 550
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_node_ptr: POINTER
               -- typedef xmlNodePtr from /usr/include/libxml2/libxml/tree.h line 488
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_ref_ptr: POINTER
               -- typedef xmlRefPtr from /usr/include/libxml2/libxml/tree.h line 473
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_idptr: POINTER
               -- typedef xmlIDPtr from /usr/include/libxml2/libxml/tree.h line 456
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_attr_ptr: POINTER
               -- typedef xmlAttrPtr from /usr/include/libxml2/libxml/tree.h line 433
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_dtd_ptr: POINTER
               -- typedef xmlDtdPtr from /usr/include/libxml2/libxml/tree.h line 405
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_ns_ptr: POINTER
               -- typedef xmlNsPtr from /usr/include/libxml2/libxml/tree.h line 388
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_element_ptr: POINTER
               -- typedef xmlElementPtr from /usr/include/libxml2/libxml/tree.h line 345
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_exp_node_ptr: POINTER
               -- typedef xmlExpNodePtr from /usr/include/libxml2/libxml/xmlregexp.h line 132
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_exp_ctxt_ptr: POINTER
               -- typedef xmlExpCtxtPtr from /usr/include/libxml2/libxml/xmlregexp.h line 117
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_reg_exec_callbacks: POINTER
               -- typedef xmlRegExecCallbacks from /usr/include/libxml2/libxml/xmlregexp.h line 72
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_dict_ptr: POINTER
               -- typedef xmlDictPtr from /usr/include/libxml2/libxml/dict.h line 26
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_reg_exec_ctxt_ptr: POINTER
               -- typedef xmlRegExecCtxtPtr from /usr/include/libxml2/libxml/xmlregexp.h line 37
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_regexp_ptr: POINTER
               -- typedef xmlRegexpPtr from /usr/include/libxml2/libxml/xmlregexp.h line 29
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_element_content_ptr: POINTER
               -- typedef xmlElementContentPtr from /usr/include/libxml2/libxml/tree.h line 305
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_attribute_ptr: POINTER
               -- typedef xmlAttributePtr from /usr/include/libxml2/libxml/tree.h line 252
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_enumeration_ptr: POINTER
               -- typedef xmlEnumerationPtr from /usr/include/libxml2/libxml/tree.h line 239
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_notation_ptr: POINTER
               -- typedef xmlNotationPtr from /usr/include/libxml2/libxml/tree.h line 193
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_buf_ptr: POINTER
               -- typedef xmlBufPtr from /usr/include/libxml2/libxml/tree.h line 114
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_buffer_ptr: POINTER
               -- typedef xmlBufferPtr from /usr/include/libxml2/libxml/tree.h line 90
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_entity_ptr: POINTER
               -- typedef xmlEntityPtr from /usr/include/libxml2/libxml/tree.h line 49
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_saxhandler_ptr: POINTER
               -- typedef xmlSAXHandlerPtr from /usr/include/libxml2/libxml/tree.h line 45
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_saxlocator_ptr: POINTER
               -- typedef xmlSAXLocatorPtr from /usr/include/libxml2/libxml/tree.h line 42
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_parser_ctxt_ptr: POINTER
               -- typedef xmlParserCtxtPtr from /usr/include/libxml2/libxml/tree.h line 39
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_parser_input_ptr: POINTER
               -- typedef xmlParserInputPtr from /usr/include/libxml2/libxml/tree.h line 36
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_output_buffer_ptr: POINTER
               -- typedef xmlOutputBufferPtr from /usr/include/libxml2/libxml/tree.h line 32
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_parser_input_buffer_ptr: POINTER
               -- typedef xmlParserInputBufferPtr from /usr/include/libxml2/libxml/tree.h line 29
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

       xml_char: CHARACTER
               -- typedef xmlChar from /usr/include/libxml2/libxml/xmlstring.h line 28
               -- Empty by design, used for anchored declarations.
       do
       ensure Result.is_default
       end

end
