#ifdef __cplusplus
extern "C" {
#endif
/*
ANSI C code generated by 
Liberty Eiffel The GNU Eiffel Compiler, Eiffel tools and libraries
    release 2013.11 (Charles Adler, Jr.)

Copyright (C), 2011-2013 - C.ADRIAN, P.REDAELLI, R.MACK
    http://www.liberty-eiffel.org

Original SmartEiffel code:
Copyright (C), 1994-2002 - INRIA - LORIA - ESIAL UHP Nancy 1 - FRANCE
Copyright (C), 2003-2005 - INRIA - LORIA - IUT Charlemagne Nancy 2 - FRANCE
D.COLNET, P.RIBET, C.ADRIAN, V.CROIZIER, F.MERIZEN
    http://smarteiffel.loria.fr
C Compiler options used: -pipe -O2 -fno-gcse
*/

#ifdef __cplusplus
}
#endif
#include "compile_to_c.h"
#ifdef __cplusplus
extern "C" {
#endif

/*NATIVE_ARRAY[FORMAL_GENERIC_ARG]*/T1391 r1391realloc(T1391 C,T2 a1,T2 a2){
T1391 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1391copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[FORMAL_GENERIC_ARG]*/void r1391copy_from(T1391 C,T1391 a1,T2 a2){
/*RF3:copy_slice_from*/r1391copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[FORMAL_GENERIC_ARG]*/void r1391set_slice_with(T1391 C,T0*a1,T2 a2,T2 a3){
T2 _i=0;
_i=a2;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a3)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(a1);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FORMAL_GENERIC_ARG]*/void r1391clear_all(T1391 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FORMAL_GENERIC_ARG]*/void r1391set_all_with(T1391 C,T0*a1,T2 a2){
/*RF3:set_slice_with*/r1391set_slice_with(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[FORMAL_GENERIC_ARG]*/void r1391copy_slice_from(T1391 C,T1391 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[FEATURE_STAMP,TYPE]]*/void r1394clear_all(T1394 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[TYPE_MARK,TYPE]]*/void r1397clear_all(T1397 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[REQUIRE_ASSERTION]*/T1399 r1399realloc(T1399 C,T2 a1,T2 a2){
T1399 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1399copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[REQUIRE_ASSERTION]*/void r1399copy_from(T1399 C,T1399 a1,T2 a2){
/*RF3:copy_slice_from*/r1399copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[REQUIRE_ASSERTION]*/void r1399clear(T1399 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[REQUIRE_ASSERTION]*/void r1399clear_all(T1399 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[REQUIRE_ASSERTION]*/void r1399copy_slice_from(T1399 C,T1399 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/T1400 r1400realloc(T1400 C,T2 a1,T2 a2){
T1400 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1400copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/void r1400copy_from(T1400 C,T1400 a1,T2 a2){
/*RF3:copy_slice_from*/r1400copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/void r1400clear(T1400 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/void r1400clear_all(T1400 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/void r1400remove(T1400 C,T2 a1,T2 a2){
T2 _i=0;
_i=a1;
while(1){
/*until*/if((_i)==(a2)) break;
/*RF7:put*/(C)[_i]=(/*RF8:item*/(C)[/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/]/*:RF8*/);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/void r1400remove_first(T1400 C,T2 a1){
T2 _i=0;
while(1){
/*until*/if((_i)==(a1)) break;
/*RF7:put*/(C)[_i]=(/*RF8:item*/(C)[/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/]/*:RF8*/);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/void r1400copy_slice_from(T1400 C,T1400 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[WHEN_ITEM]*/T1401 r1401realloc(T1401 C,T2 a1,T2 a2){
T1401 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1401copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[WHEN_ITEM]*/void r1401copy_from(T1401 C,T1401 a1,T2 a2){
/*RF3:copy_slice_from*/r1401copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[WHEN_ITEM]*/void r1401clear(T1401 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[WHEN_ITEM]*/void r1401clear_all(T1401 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[WHEN_ITEM]*/void r1401copy_slice_from(T1401 C,T1401 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[INSTRUCTION]*/T1402 r1402realloc(T1402 C,T2 a1,T2 a2){
T1402 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1402copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[INSTRUCTION]*/void r1402copy_from(T1402 C,T1402 a1,T2 a2){
/*RF3:copy_slice_from*/r1402copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[INSTRUCTION]*/void r1402clear(T1402 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INSTRUCTION]*/void r1402clear_all(T1402 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INSTRUCTION]*/void r1402remove_first(T1402 C,T2 a1){
T2 _i=0;
while(1){
/*until*/if((_i)==(a1)) break;
/*RF7:put*/(C)[_i]=(/*RF8:item*/(C)[/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/]/*:RF8*/);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INSTRUCTION]*/void r1402copy_slice_from(T1402 C,T1402 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[OPEN_OPERAND]*/T1403 r1403realloc(T1403 C,T2 a1,T2 a2){
T1403 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1403copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[OPEN_OPERAND]*/void r1403copy_from(T1403 C,T1403 a1,T2 a2){
/*RF3:copy_slice_from*/r1403copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[OPEN_OPERAND]*/void r1403clear(T1403 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[OPEN_OPERAND]*/void r1403clear_all(T1403 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[OPEN_OPERAND]*/void r1403copy_slice_from(T1403 C,T1403 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[CLOSED_OPERAND]*/T1405 r1405realloc(T1405 C,T2 a1,T2 a2){
T1405 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1405copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[CLOSED_OPERAND]*/void r1405copy_from(T1405 C,T1405 a1,T2 a2){
/*RF3:copy_slice_from*/r1405copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[CLOSED_OPERAND]*/void r1405clear(T1405 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CLOSED_OPERAND]*/void r1405clear_all(T1405 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CLOSED_OPERAND]*/void r1405copy_slice_from(T1405 C,T1405 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[CLIENT_LIST,FEATURE_NAME]]*/void r1408clear_all(T1408 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FEATURE_CLAUSE]*/T1409 r1409realloc(T1409 C,T2 a1,T2 a2){
T1409 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1409copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[FEATURE_CLAUSE]*/void r1409copy_from(T1409 C,T1409 a1,T2 a2){
/*RF3:copy_slice_from*/r1409copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[FEATURE_CLAUSE]*/void r1409clear(T1409 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FEATURE_CLAUSE]*/void r1409clear_all(T1409 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FEATURE_CLAUSE]*/void r1409copy_slice_from(T1409 C,T1409 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[CREATION_CLAUSE]*/T1410 r1410realloc(T1410 C,T2 a1,T2 a2){
T1410 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1410copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[CREATION_CLAUSE]*/void r1410copy_from(T1410 C,T1410 a1,T2 a2){
/*RF3:copy_slice_from*/r1410copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[CREATION_CLAUSE]*/void r1410clear(T1410 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CREATION_CLAUSE]*/void r1410clear_all(T1410 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CREATION_CLAUSE]*/void r1410copy_slice_from(T1410 C,T1410 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[WEAK_REFERENCE[ANY_HASHED_BIJECTIVE_DICTIONARY_NODE],STRING]]*/void r1411clear_all(T1411 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/T1414 r1414realloc(T1414 C,T2 a1,T2 a2){
T1414 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1414copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/void r1414copy_from(T1414 C,T1414 a1,T2 a2){
/*RF3:copy_slice_from*/r1414copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/void r1414clear(T1414 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/void r1414set_slice_with(T1414 C,T0*a1,T2 a2,T2 a3){
T2 _i=0;
_i=a2;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a3)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(a1);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/void r1414clear_all(T1414 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/void r1414set_all_with(T1414 C,T0*a1,T2 a2){
/*RF3:set_slice_with*/r1414set_slice_with(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/void r1414copy_slice_from(T1414 C,T1414 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[LIVE_TYPE]]*/T1415 r1415realloc(T1415 C,T2 a1,T2 a2){
T1415 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1415copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[LIVE_TYPE]]*/void r1415copy_from(T1415 C,T1415 a1,T2 a2){
/*RF3:copy_slice_from*/r1415copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[LIVE_TYPE]]*/void r1415clear(T1415 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[LIVE_TYPE]]*/void r1415clear_all(T1415 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[LIVE_TYPE]]*/void r1415copy_slice_from(T1415 C,T1415 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[RECYCLING_POOL[AVL_TREE_NODE_ANY],FIXED_STRING]]*/void r1418clear_all(T1418 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_SET_NODE[GRAPH_NODE]]*/void r1421clear_all(T1421 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INDEX_CLAUSE]*/T1427 r1427realloc(T1427 C,T2 a1,T2 a2){
T1427 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1427copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[INDEX_CLAUSE]*/void r1427copy_from(T1427 C,T1427 a1,T2 a2){
/*RF3:copy_slice_from*/r1427copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[INDEX_CLAUSE]*/void r1427clear(T1427 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INDEX_CLAUSE]*/void r1427clear_all(T1427 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INDEX_CLAUSE]*/void r1427copy_slice_from(T1427 C,T1427 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[RENAME_PAIR]*/T1428 r1428realloc(T1428 C,T2 a1,T2 a2){
T1428 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1428copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[RENAME_PAIR]*/void r1428copy_from(T1428 C,T1428 a1,T2 a2){
/*RF3:copy_slice_from*/r1428copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[RENAME_PAIR]*/void r1428clear(T1428 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RENAME_PAIR]*/void r1428clear_all(T1428 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RENAME_PAIR]*/void r1428copy_slice_from(T1428 C,T1428 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[EXPRESSION,TYPE]]*/void r1431clear_all(T1431 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[PROCESS_POSIX,INTEGER_32]]*/void r1438clear_all(T1438 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[PROCESS_WIN32,INTEGER_32]]*/void r1441clear_all(T1441 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[LINKED_LIST[TUPLE[CHARACTER,INTEGER_32]]]*/void r1450clear_all(T1450 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_DICTIONARY_NODE[INTEGER_32,INTEGER_32]]*/T1451 r1451realloc(T1451 C,T2 a1,T2 a2){
T1451 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1451copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[AVL_DICTIONARY_NODE[INTEGER_32,INTEGER_32]]*/void r1451copy_from(T1451 C,T1451 a1,T2 a2){
/*RF3:copy_slice_from*/r1451copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[AVL_DICTIONARY_NODE[INTEGER_32,INTEGER_32]]*/void r1451clear(T1451 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_DICTIONARY_NODE[INTEGER_32,INTEGER_32]]*/void r1451clear_all(T1451 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_DICTIONARY_NODE[INTEGER_32,INTEGER_32]]*/void r1451copy_slice_from(T1451 C,T1451 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[WEAK_REFERENCE[ANY_LINKED_LIST_NODE],STRING]]*/void r1454clear_all(T1454 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AGENT_CREATION]*/T1477 r1477realloc(T1477 C,T2 a1,T2 a2){
T1477 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1477copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[AGENT_CREATION]*/T2 r1477fast_index_of(T1477 C,T0*a1,T2 a2,T2 a3){
/*[INTERNAL_C_LOCAL list*/
T6 tmp0;
/*INTERNAL_C_LOCAL list]*/
T2 R=0;
R=a2;
while(1){
tmp0/*or else*/=((T6)(/*RF8:>*/((int32_t)(R))>(a3)/*:RF8*/));
if(tmp0/*or else*/){
}
else{
tmp0/*or else*/=((T6)((a1)==((void*)(/*RF8:item*/(C)[R]/*:RF8*/))));
}
/*until*/if(tmp0/*or else*/) break;
R=/*RF8:+*/((int32_t)(R))+(INT32_C(1))/*:RF8*/;
}
return R;
}/*--*/

/*NATIVE_ARRAY[AGENT_CREATION]*/void r1477copy_from(T1477 C,T1477 a1,T2 a2){
/*RF3:copy_slice_from*/r1477copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[AGENT_CREATION]*/void r1477clear(T1477 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AGENT_CREATION]*/void r1477clear_all(T1477 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AGENT_CREATION]*/void r1477copy_slice_from(T1477 C,T1477 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[TUPLE[TYPE,TYPE],TYPE]]*/void r1488clear_all(T1488 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[TYPE,TYPE]]*/void r1492clear_all(T1492 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_SET_NODE[NATIVE_PLUG_IN]]*/void r1494clear_all(T1494 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[DICTIONARY[PLUGIN,STRING],STRING]]*/void r1499clear_all(T1499 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[PLUGIN,STRING]]*/void r1502clear_all(T1502 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[E_OLD]]*/T1506 r1506realloc(T1506 C,T2 a1,T2 a2){
T1506 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1506copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[E_OLD]]*/void r1506copy_from(T1506 C,T1506 a1,T2 a2){
/*RF3:copy_slice_from*/r1506copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[E_OLD]]*/void r1506clear(T1506 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[E_OLD]]*/void r1506clear_all(T1506 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[E_OLD]]*/void r1506copy_slice_from(T1506 C,T1506 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[E_OLD]*/T1507 r1507realloc(T1507 C,T2 a1,T2 a2){
T1507 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1507copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[E_OLD]*/void r1507copy_from(T1507 C,T1507 a1,T2 a2){
/*RF3:copy_slice_from*/r1507copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[E_OLD]*/void r1507clear(T1507 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[E_OLD]*/void r1507clear_all(T1507 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[E_OLD]*/void r1507copy_slice_from(T1507 C,T1507 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_SET_NODE[FEATURE_STAMP]]*/void r1508clear_all(T1508 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[ADDRESS_OF]*/T1511 r1511realloc(T1511 C,T2 a1,T2 a2){
T1511 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1511copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[ADDRESS_OF]*/void r1511copy_from(T1511 C,T1511 a1,T2 a2){
/*RF3:copy_slice_from*/r1511copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[ADDRESS_OF]*/void r1511clear(T1511 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[ADDRESS_OF]*/void r1511clear_all(T1511 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[ADDRESS_OF]*/void r1511copy_slice_from(T1511 C,T1511 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[INLINE_MEMO]*/T1512 r1512realloc(T1512 C,T2 a1,T2 a2){
T1512 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1512copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[INLINE_MEMO]*/void r1512copy_from(T1512 C,T1512 a1,T2 a2){
/*RF3:copy_slice_from*/r1512copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[INLINE_MEMO]*/void r1512clear(T1512 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INLINE_MEMO]*/void r1512clear_all(T1512 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INLINE_MEMO]*/void r1512copy_slice_from(T1512 C,T1512 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[POINTER]*/void r1513clear_all(T1513 C,T2 a1){
T8 _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[POSITION]]*/void r1514clear(T1514 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[POSITION]]*/void r1514clear_all(T1514 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CODE_CONTEXT]*/T1549 r1549realloc(T1549 C,T2 a1,T2 a2){
T1549 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1549copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[CODE_CONTEXT]*/void r1549copy_from(T1549 C,T1549 a1,T2 a2){
/*RF3:copy_slice_from*/r1549copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[CODE_CONTEXT]*/void r1549clear(T1549 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CODE_CONTEXT]*/void r1549clear_all(T1549 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CODE_CONTEXT]*/void r1549copy_slice_from(T1549 C,T1549 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/T1550 r1550realloc(T1550 C,T2 a1,T2 a2){
T1550 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1550copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1550copy_from(T1550 C,T1550 a1,T2 a2){
/*RF3:copy_slice_from*/r1550copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1550move(T1550 C,T2 a1,T2 a2,T2 a3){
T2 _i=0;
if((a3)==(INT8_C(0))){
}
else{
if(/*RF8:<*/((int32_t)(a3))<(INT32_C(0))/*:RF8*/){
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[/*RF8:+*/((int32_t)(_i))+(a3)/*:RF8*/]=(/*RF8:item*/(C)[_i]/*:RF8*/);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}
else{
_i=a2;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(a1)/*:RF8*/) break;
/*RF7:put*/(C)[/*RF8:+*/((int32_t)(_i))+(a3)/*:RF8*/]=(/*RF8:item*/(C)[_i]/*:RF8*/);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1550clear(T1550 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1550set_slice_with(T1550 C,T0*a1,T2 a2,T2 a3){
T2 _i=0;
_i=a2;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a3)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(a1);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1550clear_all(T1550 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1550set_all_with(T1550 C,T0*a1,T2 a2){
/*RF3:set_slice_with*/r1550set_slice_with(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1550copy_slice_from(T1550 C,T1550 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_6]*/T1551 r1551realloc(T1551 C,T2 a1,T2 a2){
T1551 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1551copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_6]*/void r1551copy_from(T1551 C,T1551 a1,T2 a2){
/*RF3:copy_slice_from*/r1551copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_6]*/void r1551clear(T1551 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_6]*/void r1551clear_all(T1551 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_6]*/void r1551copy_slice_from(T1551 C,T1551 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[AGENT_ARGS,STRING]]*/void r1553clear_all(T1553 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_5]*/T1555 r1555realloc(T1555 C,T2 a1,T2 a2){
T1555 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1555copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_5]*/void r1555copy_from(T1555 C,T1555 a1,T2 a2){
/*RF3:copy_slice_from*/r1555copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_5]*/void r1555clear(T1555 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_5]*/void r1555clear_all(T1555 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_5]*/void r1555copy_slice_from(T1555 C,T1555 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[INTERNAL_C_LOCAL]*/T1556 r1556realloc(T1556 C,T2 a1,T2 a2){
T1556 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1556copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[INTERNAL_C_LOCAL]*/void r1556copy_from(T1556 C,T1556 a1,T2 a2){
/*RF3:copy_slice_from*/r1556copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[INTERNAL_C_LOCAL]*/void r1556clear(T1556 C,T2 a1,T2 a2){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INTERNAL_C_LOCAL]*/void r1556clear_all(T1556 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INTERNAL_C_LOCAL]*/void r1556copy_slice_from(T1556 C,T1556 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[TAGGED_INTEGER,INTEGER_32]]*/void r1582clear_all(T1582 C,T2 a1){
T0*_v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

#ifdef __cplusplus
}
#endif
