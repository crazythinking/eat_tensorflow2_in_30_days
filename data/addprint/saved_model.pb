�D
��
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�"serve*2.1.02v2.1.0-rc2-17-ge5bf8de4108�;
x
add_print/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameadd_print/Variable
q
&add_print/Variable/Read/ReadVariableOpReadVariableOpadd_print/Variable*
_output_shapes
: *
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*r
valueiBg Ba

x

signatures
DB
VARIABLE_VALUEadd_print/Variablex/.ATTRIBUTES/VARIABLE_VALUE
 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCallStatefulPartitionedCallsaver_filename&add_print/Variable/Read/ReadVariableOpConst*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: **
config_proto

CPU

GPU 2J 8*$
fR
__inference__traced_save_67
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameadd_print/Variable*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: **
config_proto

CPU

GPU 2J 8*'
f"R 
__inference__traced_restore_82�3
�
�
__inference__traced_restore_82
file_prefix'
#assignvariableop_add_print_variable

identity_2��AssignVariableOp�	RestoreV2�RestoreV2_1�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&Bx/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
22
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp#assignvariableop_add_print_variableIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp�
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_names�
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slices�
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp{

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_1�

Identity_2IdentityIdentity_1:output:0^AssignVariableOp
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2

Identity_2"!

identity_2Identity_2:output:0*
_input_shapes
: :2$
AssignVariableOpAssignVariableOp2
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:+ '
%
_user_specified_namefile_prefix
�
�
__inference___call___42
self*
&add_print_assignaddvariableop_resource
identity��ReadVariableOp�add_print/AssignAddVariableOp�add_print/PrintV2�%add_print/StringFormat/ReadVariableOp�
add_print/AssignAddVariableOpAssignAddVariableOp&add_print_assignaddvariableop_resourceself*
_output_shapes
 *
dtype02
add_print/AssignAddVariableOp�
%add_print/StringFormat/ReadVariableOpReadVariableOp&add_print_assignaddvariableop_resource^add_print/AssignAddVariableOp*
_output_shapes
: *
dtype02'
%add_print/StringFormat/ReadVariableOp�
add_print/StringFormatStringFormat-add_print/StringFormat/ReadVariableOp:value:0*

T
2*
_output_shapes
: *
placeholder{}*
template{}2
add_print/StringFormath
add_print/PrintV2PrintV2add_print/StringFormat:output:0*
_output_shapes
 2
add_print/PrintV2�
ReadVariableOpReadVariableOp&add_print_assignaddvariableop_resource&^add_print/StringFormat/ReadVariableOp*
_output_shapes
: *
dtype02
ReadVariableOp�
IdentityIdentityReadVariableOp:value:0^ReadVariableOp^add_print/AssignAddVariableOp^add_print/PrintV2&^add_print/StringFormat/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: :2 
ReadVariableOpReadVariableOp2>
add_print/AssignAddVariableOpadd_print/AssignAddVariableOp2&
add_print/PrintV2add_print/PrintV22N
%add_print/StringFormat/ReadVariableOp%add_print/StringFormat/ReadVariableOp:$  

_user_specified_nameself
�
�
__inference__traced_save_67
file_prefix1
-savev2_add_print_variable_read_readvariableop
savev2_1_const

identity_1��MergeV2Checkpoints�SaveV2�SaveV2_1�
StringJoin/inputs_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_de60ef7c38ef4c758a06acfa5e6af147/part2
StringJoin/inputs_1�

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&Bx/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_add_print_variable_read_readvariableop"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2�
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shard�
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1�
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names�
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slices�
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity�

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: : : 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:+ '
%
_user_specified_namefile_prefix"�J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:�
C
x

signatures
__call__"
_generic_user_object
: 2add_print/Variable
"
signature_map
�2�
__inference___call___42�
���
FullArgSpec
args�
jself
ja
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 E
__inference___call___42*�
�
�

self 
� "� 